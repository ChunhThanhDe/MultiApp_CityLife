import 'dart:async';
import 'dart:developer' as dev;
import 'dart:io';
import 'dart:ui' as ui;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show ImmutableBuffer, rootBundle;

/// Defines the source type for image loading.
///
/// This enum specifies where the image data should be loaded from,
/// which determines the appropriate loading mechanism to use.
enum ImageSource {
  /// Load image from a network URL
  network,

  /// Load image from application assets
  asset,

  /// Load image from local file system
  file,
}

/// Represents the current state of image loading operations.
///
/// This enum tracks the progress of image loading with retry functionality,
/// allowing UI components to respond appropriately to different states.
enum ImageLoadingState {
  /// Image is currently being loaded for the first time
  loading,

  /// Image loading failed and is being retried
  retrying,

  /// Image loaded successfully
  success,

  /// Image loading failed after all retry attempts
  error,
}

/// Holds the current state information for image loading operations.
///
/// This class combines the loading state with retry count information
/// to provide comprehensive status tracking for image loading operations.
class ImageState {
  /// The current loading state of the image.
  final ImageLoadingState state;

  /// The number of retry attempts made so far.
  final int retryCount;

  /// Creates an [ImageState] with the specified state and retry count.
  ///
  /// [state] The current loading state.
  /// [retryCount] The number of retries attempted (defaults to 0).
  const ImageState({required this.state, this.retryCount = 0});
}

/// Internal constants used by the image loading system.
///
/// This class defines default values for retry logic, timing, and animations
/// used throughout the image loading implementation.
class _ImageConstants {
  /// Maximum number of retry attempts for failed image loads.
  static const int maxRetries = 3;

  /// Initial delay between retry attempts.
  static const Duration retryDelay = Duration(seconds: 1);

  /// Maximum delay between retry attempts (with exponential backoff).
  static const Duration maxRetryDelay = Duration(seconds: 3);

  /// Multiplier for exponential backoff delay calculation.
  static const double backoffFactor = 2.0;

  /// Duration of the fade-in animation when image loads successfully.
  static const Duration fadeInDuration = Duration(milliseconds: 300);
}

/// A robust image provider with retry logic, caching, and error handling capabilities.
///
/// This image provider extends Flutter's [ImageProvider] to add enterprise-grade
/// features like automatic retry on failure, exponential backoff, caching control,
/// and comprehensive error handling. It supports loading from multiple sources
/// including network URLs, local assets, files, and other image providers.
///
/// Features:
/// - Automatic retry with exponential backoff
/// - Configurable retry limits and timing
/// - Support for multiple image sources (network, asset, file, provider)
/// - Caching control for network images
/// - Error image fallback support
/// - State notifications for UI updates
/// - Comprehensive error logging
///
/// Example usage:
/// ```dart
/// final provider = AppImageProvider.network(
///   'https://example.com/image.jpg',
///   maxRetries: 3,
///   errorImageAsset: 'assets/images/error.png',
/// );
///
/// Image(image: provider)
/// ```
class AppImageProvider extends ImageProvider<AppImageProvider> {
  /// The path or URL of the image to load.
  final String? imagePath;

  /// The source type of the image (network, asset, or file).
  final ImageSource? source;

  /// An existing image provider to wrap with retry functionality.
  final ImageProvider? imageProvider;

  /// Maximum number of retry attempts for failed loads.
  final int maxRetries;

  /// Initial delay between retry attempts.
  final Duration retryDelay;

  /// Maximum delay between retry attempts.
  final Duration maxRetryDelay;

  /// Multiplier for exponential backoff calculation.
  final double backoffFactor;

  /// Asset path for fallback image when loading fails.
  final String? errorImageAsset;

  /// Whether to use caching for network images.
  final bool useCache;

  /// Notifier for image loading state changes.
  final ValueNotifier<ImageState> stateNotifier;

  /// Private constructor for internal use by factory methods.
  AppImageProvider._({
    this.imagePath,
    this.source,
    this.imageProvider,
    this.maxRetries = _ImageConstants.maxRetries,
    this.retryDelay = _ImageConstants.retryDelay,
    this.maxRetryDelay = _ImageConstants.maxRetryDelay,
    this.backoffFactor = _ImageConstants.backoffFactor,
    this.errorImageAsset,
    this.useCache = true,
    ValueNotifier<ImageState>? stateNotifier,
  }) : stateNotifier = stateNotifier ?? ValueNotifier<ImageState>(const ImageState(state: ImageLoadingState.loading)),
       assert((imageProvider != null) || (imagePath != null && source != null), 'Either imageProvider or both imagePath and source must be provided');

  /// Creates an image provider for loading network images.
  ///
  /// This factory method creates a provider specifically configured for
  /// loading images from network URLs with caching and retry support.
  ///
  /// [url] The network URL of the image to load.
  /// [maxRetries] Maximum retry attempts (defaults to 3).
  /// [retryDelay] Initial delay between retries.
  /// [maxRetryDelay] Maximum delay with exponential backoff.
  /// [backoffFactor] Multiplier for exponential backoff.
  /// [errorImageAsset] Asset path for error fallback image.
  /// [useCache] Whether to cache the network image.
  /// [stateNotifier] Optional external state notifier.
  factory AppImageProvider.network(
    String url, {
    int maxRetries = _ImageConstants.maxRetries,
    Duration retryDelay = _ImageConstants.retryDelay,
    Duration maxRetryDelay = _ImageConstants.maxRetryDelay,
    double backoffFactor = _ImageConstants.backoffFactor,
    String? errorImageAsset,
    bool useCache = true,
    ValueNotifier<ImageState>? stateNotifier,
  }) {
    return AppImageProvider._(
      imagePath: url,
      source: ImageSource.network,
      maxRetries: maxRetries,
      retryDelay: retryDelay,
      maxRetryDelay: maxRetryDelay,
      backoffFactor: backoffFactor,
      errorImageAsset: errorImageAsset,
      useCache: useCache,
      stateNotifier: stateNotifier,
    );
  }

  /// Creates an image provider for loading asset images.
  ///
  /// This factory method creates a provider for loading images from
  /// the application's asset bundle with retry support.
  ///
  /// [path] The asset path of the image to load.
  /// [maxRetries] Maximum retry attempts (defaults to 3).
  /// [retryDelay] Initial delay between retries.
  /// [maxRetryDelay] Maximum delay with exponential backoff.
  /// [backoffFactor] Multiplier for exponential backoff.
  /// [errorImageAsset] Asset path for error fallback image.
  /// [stateNotifier] Optional external state notifier.
  factory AppImageProvider.asset(
    String path, {
    int maxRetries = _ImageConstants.maxRetries,
    Duration retryDelay = _ImageConstants.retryDelay,
    Duration maxRetryDelay = _ImageConstants.maxRetryDelay,
    double backoffFactor = _ImageConstants.backoffFactor,
    String? errorImageAsset,
    ValueNotifier<ImageState>? stateNotifier,
  }) {
    return AppImageProvider._(
      imagePath: path,
      source: ImageSource.asset,
      maxRetries: maxRetries,
      retryDelay: retryDelay,
      maxRetryDelay: maxRetryDelay,
      backoffFactor: backoffFactor,
      errorImageAsset: errorImageAsset,
      stateNotifier: stateNotifier,
    );
  }

  /// Creates an image provider for loading file images.
  ///
  /// This factory method creates a provider for loading images from
  /// the local file system with retry support.
  ///
  /// [path] The file path of the image to load.
  /// [maxRetries] Maximum retry attempts (defaults to 3).
  /// [retryDelay] Initial delay between retries.
  /// [maxRetryDelay] Maximum delay with exponential backoff.
  /// [backoffFactor] Multiplier for exponential backoff.
  /// [errorImageAsset] Asset path for error fallback image.
  /// [stateNotifier] Optional external state notifier.
  factory AppImageProvider.file(
    String path, {
    int maxRetries = _ImageConstants.maxRetries,
    Duration retryDelay = _ImageConstants.retryDelay,
    Duration maxRetryDelay = _ImageConstants.maxRetryDelay,
    double backoffFactor = _ImageConstants.backoffFactor,
    String? errorImageAsset,
    ValueNotifier<ImageState>? stateNotifier,
  }) {
    return AppImageProvider._(
      imagePath: path,
      source: ImageSource.file,
      maxRetries: maxRetries,
      retryDelay: retryDelay,
      maxRetryDelay: maxRetryDelay,
      backoffFactor: backoffFactor,
      errorImageAsset: errorImageAsset,
      stateNotifier: stateNotifier,
    );
  }

  /// Creates an image provider that wraps an existing provider with retry functionality.
  ///
  /// This factory method allows wrapping any existing [ImageProvider] with
  /// the retry and error handling capabilities of [AppImageProvider].
  ///
  /// [provider] The existing image provider to wrap.
  /// [maxRetries] Maximum retry attempts (defaults to 3).
  /// [retryDelay] Initial delay between retries.
  /// [maxRetryDelay] Maximum delay with exponential backoff.
  /// [backoffFactor] Multiplier for exponential backoff.
  /// [errorImageAsset] Asset path for error fallback image.
  /// [stateNotifier] Optional external state notifier.
  factory AppImageProvider.provider(
    ImageProvider provider, {
    int maxRetries = _ImageConstants.maxRetries,
    Duration retryDelay = _ImageConstants.retryDelay,
    Duration maxRetryDelay = _ImageConstants.maxRetryDelay,
    double backoffFactor = _ImageConstants.backoffFactor,
    String? errorImageAsset,
    ValueNotifier<ImageState>? stateNotifier,
  }) {
    return AppImageProvider._(
      imageProvider: provider,
      maxRetries: maxRetries,
      retryDelay: retryDelay,
      maxRetryDelay: maxRetryDelay,
      backoffFactor: backoffFactor,
      errorImageAsset: errorImageAsset,
      stateNotifier: stateNotifier,
    );
  }

  /// Current retry attempt counter.
  int _currentRetry = 0;

  @override
  Future<AppImageProvider> obtainKey(ImageConfiguration configuration) => Future.value(this);

  @override
  ImageStreamCompleter loadImage(AppImageProvider key, Future<ui.Codec> Function(ImmutableBuffer buffer, {ui.TargetImageSize Function(int, int)? getTargetSize}) decode) {
    stateNotifier.value = ImageState(state: ImageLoadingState.loading, retryCount: _currentRetry);
    return MultiFrameImageStreamCompleter(
      codec: _loadImageWithRetries(decode),
      scale: 1.0,
      informationCollector: () => [DiagnosticsProperty('Image provider', this), DiagnosticsProperty('Image key', key)],
    );
  }

  Future<ui.Codec> _loadImageWithRetries(Future<ui.Codec> Function(ImmutableBuffer buffer, {ui.TargetImageSize Function(int, int)? getTargetSize}) decode) async {
    while (_currentRetry <= maxRetries) {
      try {
        final codec = imageProvider != null ? await _loadProviderImage(imageProvider!, decode) : await _loadImageFromSource(decode);
        stateNotifier.value = ImageState(state: ImageLoadingState.success, retryCount: _currentRetry);
        return codec;
      } catch (error) {
        _logError('Failed to load image: ${imageProvider ?? imagePath}', error);
        if (_currentRetry < maxRetries) {
          _currentRetry++;
          stateNotifier.value = ImageState(state: ImageLoadingState.retrying, retryCount: _currentRetry);
          await Future.delayed(_calculateRetryDelay());
        } else {
          stateNotifier.value = ImageState(state: ImageLoadingState.error, retryCount: _currentRetry);
          if (errorImageAsset != null) {
            return await _loadAssetImage(errorImageAsset!, decode);
          }
          rethrow;
        }
      }
    }
    throw Exception('Max retries exceeded');
  }

  Future<ui.Codec> _loadImageFromSource(Future<ui.Codec> Function(ImmutableBuffer buffer, {ui.TargetImageSize Function(int, int)? getTargetSize}) decode) async {
    switch (source!) {
      case ImageSource.network:
        return await _loadNetworkImage(imagePath!, decode);
      case ImageSource.asset:
        return await _loadAssetImage(imagePath!, decode);
      case ImageSource.file:
        return await _loadFileImage(imagePath!, decode);
    }
  }

  Future<ui.Codec> _loadProviderImage(ImageProvider provider, Future<ui.Codec> Function(ImmutableBuffer buffer, {ui.TargetImageSize Function(int, int)? getTargetSize}) decode) async {
    final config = ImageConfiguration();
    final completer = Completer<ui.Codec>();
    late final ImageStreamListener listener;

    listener = ImageStreamListener(
      (image, _) async {
        if (completer.isCompleted) return; // Prevent multiple completions
        try {
          final byteData = await image.image.toByteData(format: ui.ImageByteFormat.png);
          if (byteData != null) {
            final buffer = await ImmutableBuffer.fromUint8List(byteData.buffer.asUint8List());
            if (!completer.isCompleted) {
              completer.complete(await decode(buffer));
            }
          } else {
            if (!completer.isCompleted) {
              completer.completeError(Exception('Failed to get byte data'));
            }
          }
        } catch (error) {
          if (!completer.isCompleted) {
            completer.completeError(error);
          }
        }
      },
      onError: (error, stackTrace) {
        if (!completer.isCompleted) {
          completer.completeError(error, stackTrace);
        }
      },
    );

    final imageStream = provider.resolve(config);
    imageStream.addListener(listener);

    // Remove listener when completed to prevent memory leaks
    completer.future.whenComplete(() {
      imageStream.removeListener(listener);
    });

    return completer.future;
  }

  Future<ui.Codec> _loadNetworkImage(String url, Future<ui.Codec> Function(ImmutableBuffer buffer, {ui.TargetImageSize Function(int, int)? getTargetSize}) decode) async {
    final provider = CachedNetworkImageProvider(url, cacheKey: useCache ? url : null);
    return _loadProviderImage(provider, decode);
  }

  Future<ui.Codec> _loadAssetImage(String path, Future<ui.Codec> Function(ImmutableBuffer buffer, {ui.TargetImageSize Function(int, int)? getTargetSize}) decode) async {
    final data = await rootBundle.load(path);
    final buffer = await ImmutableBuffer.fromUint8List(data.buffer.asUint8List());
    return decode(buffer);
  }

  Future<ui.Codec> _loadFileImage(String path, Future<ui.Codec> Function(ImmutableBuffer buffer, {ui.TargetImageSize Function(int, int)? getTargetSize}) decode) async {
    final file = File(path);
    final bytes = await file.readAsBytes();
    final buffer = await ImmutableBuffer.fromUint8List(bytes);
    return decode(buffer);
  }

  Duration _calculateRetryDelay() {
    final delayMs = retryDelay.inMilliseconds * (backoffFactor * _currentRetry);
    return Duration(milliseconds: delayMs.clamp(0, maxRetryDelay.inMilliseconds).toInt());
  }

  void _logError(String message, dynamic error) {
    dev.log(message, name: 'AppImageProvider', error: error, time: DateTime.now());
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppImageProvider &&
          imagePath == other.imagePath &&
          source == other.source &&
          imageProvider == other.imageProvider &&
          maxRetries == other.maxRetries &&
          retryDelay == other.retryDelay &&
          maxRetryDelay == other.maxRetryDelay &&
          backoffFactor == other.backoffFactor &&
          errorImageAsset == other.errorImageAsset &&
          useCache == other.useCache;

  @override
  int get hashCode => Object.hash(imagePath, source, imageProvider, maxRetries, retryDelay, maxRetryDelay, backoffFactor, errorImageAsset, useCache);
}

/// A comprehensive image widget with advanced loading capabilities and error handling.
///
/// This widget provides a robust image display solution with features like:
/// - Multiple image sources (network, asset, file, provider)
/// - Automatic retry with exponential backoff
/// - Customizable placeholder and error widgets
/// - Smooth fade-in animations
/// - Accessibility support with alt text
/// - Loading state management and notifications
/// - Comprehensive error handling with fallback options
///
/// The widget automatically handles loading states, displays placeholders during loading,
/// and shows error widgets or fallback images when loading fails. It supports both
/// synchronous (asset, file) and asynchronous (network) image loading with consistent behavior.
///
/// Example usage:
/// ```dart
/// AppImage.network(
///   'https://example.com/image.jpg',
///   width: 200,
///   height: 200,
///   placeholder: CircularProgressIndicator(),
///   errorWidget: Icon(Icons.error),
///   altText: 'Profile picture',
/// )
/// ```
class AppImage extends StatefulWidget {
  /// The path or URL of the image to load.
  final String? imagePath;

  /// The source type of the image (network, asset, or file).
  final ImageSource? source;

  /// An existing image provider to use instead of creating one from path/source.
  final ImageProvider? imageProvider;

  /// Maximum number of retry attempts for failed loads.
  final int maxRetries;

  /// Initial delay between retry attempts.
  final Duration retryDelay;

  /// Maximum delay between retry attempts with exponential backoff.
  final Duration maxRetryDelay;

  /// Multiplier for exponential backoff calculation.
  final double backoffFactor;

  /// Widget to display while the image is loading.
  final Widget placeholder;

  /// Widget to display when image loading fails (if no error asset is provided).
  final Widget errorWidget;

  /// Asset path for fallback image when loading fails.
  final String? errorImageAsset;

  /// How the image should be inscribed into the available space.
  final BoxFit fit;

  /// Width of the image widget. If null, uses intrinsic width.
  final double? width;

  /// Height of the image widget. If null, uses intrinsic height.
  final double? height;

  /// Whether to use caching for network images.
  final bool useCache;

  /// Alternative text for accessibility (screen readers).
  final String? altText;

  /// Duration of the fade-in animation when image loads.
  final Duration fadeInDuration;

  /// Optional external state notifier for monitoring loading state.
  final ValueNotifier<ImageState>? stateNotifier;

  /// Private constructor for internal use by factory methods.
  ///
  /// This constructor contains the core logic and validation for creating
  /// an AppImage instance. It ensures that either an imageProvider or
  /// both imagePath and source are provided.
  const AppImage._({
    super.key,
    this.imagePath,
    this.source,
    this.imageProvider,
    this.maxRetries = _ImageConstants.maxRetries,
    this.retryDelay = _ImageConstants.retryDelay,
    this.maxRetryDelay = _ImageConstants.maxRetryDelay,
    this.backoffFactor = _ImageConstants.backoffFactor,
    this.placeholder = const Center(child: CircularProgressIndicator()),
    this.errorWidget = const Icon(Icons.broken_image, size: 50, color: Colors.grey),
    this.errorImageAsset,
    this.fit = BoxFit.cover,
    this.width,
    this.height,
    this.useCache = true,
    this.altText,
    this.fadeInDuration = _ImageConstants.fadeInDuration,
    this.stateNotifier,
  }) : assert((imageProvider != null) || (imagePath != null && source != null), 'Either imageProvider or both imagePath and source must be provided');

  /// Creates an AppImage widget for loading network images.
  ///
  /// This factory constructor creates an image widget specifically for loading
  /// images from network URLs. It includes built-in caching, retry logic,
  /// and error handling for unreliable network conditions.
  ///
  /// [url] The network URL of the image to load.
  /// [key] Optional widget key for Flutter's widget tree.
  /// [maxRetries] Maximum retry attempts for failed loads.
  /// [retryDelay] Initial delay between retry attempts.
  /// [maxRetryDelay] Maximum delay with exponential backoff.
  /// [backoffFactor] Multiplier for exponential backoff.
  /// [placeholder] Widget to show while loading.
  /// [errorWidget] Widget to show on error (if no error asset).
  /// [errorImageAsset] Asset path for error fallback image.
  /// [fit] How the image should fit within its bounds.
  /// [width] Fixed width for the image.
  /// [height] Fixed height for the image.
  /// [useCache] Whether to cache the network image.
  /// [altText] Accessibility text for screen readers.
  /// [fadeInDuration] Duration of fade-in animation.
  /// [stateNotifier] Optional external state notifier.
  factory AppImage.network(
    String url, {
    Key? key,
    int maxRetries = _ImageConstants.maxRetries,
    Duration retryDelay = _ImageConstants.retryDelay,
    Duration maxRetryDelay = _ImageConstants.maxRetryDelay,
    double backoffFactor = _ImageConstants.backoffFactor,
    Widget placeholder = const Center(child: CircularProgressIndicator()),
    Widget errorWidget = const Icon(Icons.broken_image, size: 50, color: Colors.grey),
    String? errorImageAsset,
    BoxFit fit = BoxFit.cover,
    double? width,
    double? height,
    bool useCache = true,
    String? altText,
    Duration fadeInDuration = _ImageConstants.fadeInDuration,
    ValueNotifier<ImageState>? stateNotifier,
  }) {
    return AppImage._(
      key: key,
      imagePath: url,
      source: ImageSource.network,
      maxRetries: maxRetries,
      retryDelay: retryDelay,
      maxRetryDelay: maxRetryDelay,
      backoffFactor: backoffFactor,
      placeholder: placeholder,
      errorWidget: errorWidget,
      errorImageAsset: errorImageAsset,
      fit: fit,
      width: width,
      height: height,
      useCache: useCache,
      altText: altText,
      fadeInDuration: fadeInDuration,
      stateNotifier: stateNotifier,
    );
  }

  /// Creates an AppImage widget for loading asset images.
  ///
  /// This factory constructor creates an image widget for loading images
  /// from the application's asset bundle. While asset loading is typically
  /// reliable, this still provides retry logic for edge cases and consistent
  /// error handling across all image sources.
  ///
  /// [path] The asset path of the image to load (e.g., 'assets/images/logo.png').
  /// [key] Optional widget key for Flutter's widget tree.
  /// [maxRetries] Maximum retry attempts for failed loads.
  /// [retryDelay] Initial delay between retry attempts.
  /// [maxRetryDelay] Maximum delay with exponential backoff.
  /// [backoffFactor] Multiplier for exponential backoff.
  /// [placeholder] Widget to show while loading.
  /// [errorWidget] Widget to show on error (if no error asset).
  /// [errorImageAsset] Asset path for error fallback image.
  /// [fit] How the image should fit within its bounds.
  /// [width] Fixed width for the image.
  /// [height] Fixed height for the image.
  /// [altText] Accessibility text for screen readers.
  /// [fadeInDuration] Duration of fade-in animation.
  /// [stateNotifier] Optional external state notifier.
  factory AppImage.asset(
    String path, {
    Key? key,
    int maxRetries = _ImageConstants.maxRetries,
    Duration retryDelay = _ImageConstants.retryDelay,
    Duration maxRetryDelay = _ImageConstants.maxRetryDelay,
    double backoffFactor = _ImageConstants.backoffFactor,
    Widget placeholder = const Center(child: CircularProgressIndicator()),
    Widget errorWidget = const Icon(Icons.broken_image, size: 50, color: Colors.grey),
    String? errorImageAsset,
    BoxFit fit = BoxFit.cover,
    double? width,
    double? height,
    String? altText,
    Duration fadeInDuration = _ImageConstants.fadeInDuration,
    ValueNotifier<ImageState>? stateNotifier,
  }) {
    return AppImage._(
      key: key,
      imagePath: path,
      source: ImageSource.asset,
      maxRetries: maxRetries,
      retryDelay: retryDelay,
      maxRetryDelay: maxRetryDelay,
      backoffFactor: backoffFactor,
      placeholder: placeholder,
      errorWidget: errorWidget,
      errorImageAsset: errorImageAsset,
      fit: fit,
      width: width,
      height: height,
      altText: altText,
      fadeInDuration: fadeInDuration,
      stateNotifier: stateNotifier,
    );
  }

  /// Creates an AppImage widget for loading file images.
  ///
  /// This factory constructor creates an image widget for loading images
  /// from the local file system. This is useful for user-generated content,
  /// cached images, or images stored in the device's file system.
  ///
  /// [path] The file path of the image to load (e.g., '/path/to/image.jpg').
  /// [key] Optional widget key for Flutter's widget tree.
  /// [maxRetries] Maximum retry attempts for failed loads.
  /// [retryDelay] Initial delay between retry attempts.
  /// [maxRetryDelay] Maximum delay with exponential backoff.
  /// [backoffFactor] Multiplier for exponential backoff.
  /// [placeholder] Widget to show while loading.
  /// [errorWidget] Widget to show on error (if no error asset).
  /// [errorImageAsset] Asset path for error fallback image.
  /// [fit] How the image should fit within its bounds.
  /// [width] Fixed width for the image.
  /// [height] Fixed height for the image.
  /// [altText] Accessibility text for screen readers.
  /// [fadeInDuration] Duration of fade-in animation.
  /// [stateNotifier] Optional external state notifier.
  factory AppImage.file(
    String path, {
    Key? key,
    int maxRetries = _ImageConstants.maxRetries,
    Duration retryDelay = _ImageConstants.retryDelay,
    Duration maxRetryDelay = _ImageConstants.maxRetryDelay,
    double backoffFactor = _ImageConstants.backoffFactor,
    Widget placeholder = const Center(child: CircularProgressIndicator()),
    Widget errorWidget = const Icon(Icons.broken_image, size: 50, color: Colors.grey),
    String? errorImageAsset,
    BoxFit fit = BoxFit.cover,
    double? width,
    double? height,
    String? altText,
    Duration fadeInDuration = _ImageConstants.fadeInDuration,
    ValueNotifier<ImageState>? stateNotifier,
  }) {
    return AppImage._(
      key: key,
      imagePath: path,
      source: ImageSource.file,
      maxRetries: maxRetries,
      retryDelay: retryDelay,
      maxRetryDelay: maxRetryDelay,
      backoffFactor: backoffFactor,
      placeholder: placeholder,
      errorWidget: errorWidget,
      errorImageAsset: errorImageAsset,
      fit: fit,
      width: width,
      height: height,
      altText: altText,
      fadeInDuration: fadeInDuration,
      stateNotifier: stateNotifier,
    );
  }

  /// Creates an AppImage widget that wraps an existing ImageProvider.
  ///
  /// This factory constructor allows you to wrap any existing ImageProvider
  /// with AppImage's advanced features like retry logic, error handling,
  /// and consistent UI behavior. This is useful when you have custom
  /// image providers or want to add AppImage features to existing code.
  ///
  /// [provider] The existing ImageProvider to wrap.
  /// [key] Optional widget key for Flutter's widget tree.
  /// [maxRetries] Maximum retry attempts for failed loads.
  /// [retryDelay] Initial delay between retry attempts.
  /// [maxRetryDelay] Maximum delay with exponential backoff.
  /// [backoffFactor] Multiplier for exponential backoff.
  /// [placeholder] Widget to show while loading.
  /// [errorWidget] Widget to show on error (if no error asset).
  /// [errorImageAsset] Asset path for error fallback image.
  /// [fit] How the image should fit within its bounds.
  /// [width] Fixed width for the image.
  /// [height] Fixed height for the image.
  /// [altText] Accessibility text for screen readers.
  /// [fadeInDuration] Duration of fade-in animation.
  /// [stateNotifier] Optional external state notifier.
  factory AppImage.provider(
    ImageProvider provider, {
    Key? key,
    int maxRetries = _ImageConstants.maxRetries,
    Duration retryDelay = _ImageConstants.retryDelay,
    Duration maxRetryDelay = _ImageConstants.maxRetryDelay,
    double backoffFactor = _ImageConstants.backoffFactor,
    Widget placeholder = const Center(child: CircularProgressIndicator()),
    Widget errorWidget = const Icon(Icons.broken_image, size: 50, color: Colors.grey),
    String? errorImageAsset,
    BoxFit fit = BoxFit.cover,
    double? width,
    double? height,
    String? altText,
    Duration fadeInDuration = _ImageConstants.fadeInDuration,
    ValueNotifier<ImageState>? stateNotifier,
  }) {
    return AppImage._(
      key: key,
      imageProvider: provider,
      maxRetries: maxRetries,
      retryDelay: retryDelay,
      maxRetryDelay: maxRetryDelay,
      backoffFactor: backoffFactor,
      placeholder: placeholder,
      errorWidget: errorWidget,
      errorImageAsset: errorImageAsset,
      fit: fit,
      width: width,
      height: height,
      altText: altText,
      fadeInDuration: fadeInDuration,
      stateNotifier: stateNotifier,
    );
  }

  @override
  State<AppImage> createState() => _AppImageState();
}

/// Private state class for [AppImage] that manages loading, animations, and error handling.
///
/// This state class handles the complete lifecycle of image loading including:
/// - Creating and managing the image provider
/// - Controlling fade-in animations
/// - Handling loading state changes
/// - Building appropriate UI based on current state
/// - Managing accessibility semantics
/// - Proper resource cleanup
class _AppImageState extends State<AppImage> with SingleTickerProviderStateMixin {
  /// The image provider instance that handles loading with retry logic.
  late final AppImageProvider _imageProvider;

  /// Animation controller for the fade-in effect when image loads.
  late final AnimationController _fadeController;

  /// The fade animation that transitions from transparent to opaque.
  late final Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _fadeController = AnimationController(vsync: this, duration: widget.fadeInDuration);
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_fadeController);
    _imageProvider = AppImageProvider._(
      imagePath: widget.imagePath,
      source: widget.source,
      imageProvider: widget.imageProvider,
      maxRetries: widget.maxRetries,
      retryDelay: widget.retryDelay,
      maxRetryDelay: widget.maxRetryDelay,
      backoffFactor: widget.backoffFactor,
      errorImageAsset: widget.errorImageAsset,
      useCache: widget.useCache,
      stateNotifier: widget.stateNotifier,
    );
    _fadeController.forward();
  }

  @override
  void dispose() {
    _fadeController.dispose();
    if (widget.stateNotifier == null) {
      _imageProvider.stateNotifier.dispose();
    }
    super.dispose();
  }

  /// Builds the error widget with proper accessibility semantics.
  ///
  /// This method creates the error display widget when image loading fails.
  /// It prioritizes showing an error image asset if provided, otherwise
  /// falls back to the custom error widget. Includes proper accessibility
  /// semantics for screen readers.
  ///
  /// Returns a widget with error image or fallback error widget wrapped
  /// in accessibility semantics.
  Widget _buildErrorWidget() {
    final errorChild = widget.errorImageAsset != null ? Image.asset(widget.errorImageAsset!, fit: widget.fit, width: widget.width, height: widget.height) : widget.errorWidget;
    return Semantics(image: true, label: widget.altText ?? 'Error loading image', child: errorChild);
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ImageState>(
      valueListenable: _imageProvider.stateNotifier,
      builder: (context, state, _) {
        if (state.state == ImageLoadingState.error) {
          return _buildErrorWidget();
        }
        return Semantics(
          image: true,
          label: widget.altText ?? 'Image',
          child: FadeTransition(
            opacity: _fadeAnimation,
            child: Image(
              image: _imageProvider,
              fit: widget.fit,
              width: widget.width,
              height: widget.height,
              frameBuilder: (_, child, frame, _) => frame != null ? child : widget.placeholder,
              errorBuilder: (_, _, _) => widget.placeholder,
            ),
          ),
        );
      },
    );
  }
}
