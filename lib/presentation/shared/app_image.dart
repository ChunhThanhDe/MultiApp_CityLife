import 'dart:async';
import 'dart:developer' as dev;
import 'dart:io';
import 'dart:ui' as ui;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show ImmutableBuffer, rootBundle;

enum ImageSource { network, asset, file }

enum ImageLoadingState { loading, retrying, success, error }

class ImageState {
  final ImageLoadingState state;
  final int retryCount;

  const ImageState({required this.state, this.retryCount = 0});
}

class _ImageConstants {
  static const int maxRetries = 3;
  static const Duration retryDelay = Duration(seconds: 1);
  static const Duration maxRetryDelay = Duration(seconds: 3);
  static const double backoffFactor = 2.0;
  static const Duration fadeInDuration = Duration(milliseconds: 300);
}

class AppImageProvider extends ImageProvider<AppImageProvider> {
  final String? imagePath;
  final ImageSource? source;
  final ImageProvider? imageProvider;
  final int maxRetries;
  final Duration retryDelay;
  final Duration maxRetryDelay;
  final double backoffFactor;
  final String? errorImageAsset;
  final bool useCache;
  final ValueNotifier<ImageState> stateNotifier;

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
  })  : stateNotifier = stateNotifier ?? ValueNotifier<ImageState>(const ImageState(state: ImageLoadingState.loading)),
        assert(
          (imageProvider != null) || (imagePath != null && source != null),
          'Either imageProvider or both imagePath and source must be provided',
        );

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

  int _currentRetry = 0;

  @override
  Future<AppImageProvider> obtainKey(ImageConfiguration configuration) => Future.value(this);

  @override
  ImageStreamCompleter loadImage(
    AppImageProvider key,
    Future<ui.Codec> Function(
      ImmutableBuffer buffer, {
      ui.TargetImageSize Function(int, int)? getTargetSize,
    }) decode,
  ) {
    stateNotifier.value = ImageState(state: ImageLoadingState.loading, retryCount: _currentRetry);
    return MultiFrameImageStreamCompleter(
      codec: _loadImageWithRetries(decode),
      scale: 1.0,
      informationCollector: () => [
        DiagnosticsProperty('Image provider', this),
        DiagnosticsProperty('Image key', key),
      ],
    );
  }

  Future<ui.Codec> _loadImageWithRetries(
    Future<ui.Codec> Function(
      ImmutableBuffer buffer, {
      ui.TargetImageSize Function(int, int)? getTargetSize,
    }) decode,
  ) async {
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

  Future<ui.Codec> _loadImageFromSource(
    Future<ui.Codec> Function(
      ImmutableBuffer buffer, {
      ui.TargetImageSize Function(int, int)? getTargetSize,
    }) decode,
  ) async {
    switch (source!) {
      case ImageSource.network:
        return await _loadNetworkImage(imagePath!, decode);
      case ImageSource.asset:
        return await _loadAssetImage(imagePath!, decode);
      case ImageSource.file:
        return await _loadFileImage(imagePath!, decode);
    }
  }

  Future<ui.Codec> _loadProviderImage(
    ImageProvider provider,
    Future<ui.Codec> Function(
      ImmutableBuffer buffer, {
      ui.TargetImageSize Function(int, int)? getTargetSize,
    }) decode,
  ) async {
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

  Future<ui.Codec> _loadNetworkImage(
    String url,
    Future<ui.Codec> Function(
      ImmutableBuffer buffer, {
      ui.TargetImageSize Function(int, int)? getTargetSize,
    }) decode,
  ) async {
    final provider = CachedNetworkImageProvider(url, cacheKey: useCache ? url : null);
    return _loadProviderImage(provider, decode);
  }

  Future<ui.Codec> _loadAssetImage(
    String path,
    Future<ui.Codec> Function(
      ImmutableBuffer buffer, {
      ui.TargetImageSize Function(int, int)? getTargetSize,
    }) decode,
  ) async {
    final data = await rootBundle.load(path);
    final buffer = await ImmutableBuffer.fromUint8List(data.buffer.asUint8List());
    return decode(buffer);
  }

  Future<ui.Codec> _loadFileImage(
    String path,
    Future<ui.Codec> Function(
      ImmutableBuffer buffer, {
      ui.TargetImageSize Function(int, int)? getTargetSize,
    }) decode,
  ) async {
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
    dev.log(
      message,
      name: 'AppImageProvider',
      error: error,
      time: DateTime.now(),
    );
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
  int get hashCode => Object.hash(
        imagePath,
        source,
        imageProvider,
        maxRetries,
        retryDelay,
        maxRetryDelay,
        backoffFactor,
        errorImageAsset,
        useCache,
      );
}

class AppImage extends StatefulWidget {
  final String? imagePath;
  final ImageSource? source;
  final ImageProvider? imageProvider;
  final int maxRetries;
  final Duration retryDelay;
  final Duration maxRetryDelay;
  final double backoffFactor;
  final Widget placeholder;
  final Widget errorWidget;
  final String? errorImageAsset;
  final BoxFit fit;
  final double? width;
  final double? height;
  final bool useCache;
  final String? altText;
  final Duration fadeInDuration;
  final ValueNotifier<ImageState>? stateNotifier;

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
  }) : assert(
          (imageProvider != null) || (imagePath != null && source != null),
          'Either imageProvider or both imagePath and source must be provided',
        );

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

class _AppImageState extends State<AppImage> with SingleTickerProviderStateMixin {
  late final AppImageProvider _imageProvider;
  late final AnimationController _fadeController;
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

  Widget _buildErrorWidget() {
    final errorChild = widget.errorImageAsset != null ? Image.asset(widget.errorImageAsset!, fit: widget.fit, width: widget.width, height: widget.height) : widget.errorWidget;
    return Semantics(
      image: true,
      label: widget.altText ?? 'Error loading image',
      child: errorChild,
    );
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
              frameBuilder: (_, child, frame, __) => frame != null ? child : widget.placeholder,
              errorBuilder: (_, __, ___) => widget.placeholder,
            ),
          ),
        );
      },
    );
  }
}
