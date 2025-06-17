import 'package:flutter/material.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';

/// A customizable button widget with tap animations, loading states, and accessibility support.
///
/// This widget provides a Material Design button with scale animation on tap,
/// loading state management, customizable appearance, and proper accessibility semantics.
/// The button scales down when pressed and provides visual feedback to users.
///
/// Features:
/// - Scale animation on tap with customizable curve and scale factor
/// - Loading state with circular progress indicator
/// - Enable/disable state management
/// - Customizable colors, shape, padding, and elevation
/// - Accessibility support with semantic labels
/// - Size constraints and intrinsic sizing
///
/// Example usage:
/// ```dart
/// AppButton(
///   onTap: () => print('Button pressed'),
///   child: Text('Press Me'),
///   loading: false,
///   enabled: true,
/// )
/// ```
class AppButton extends StatefulWidget {
  /// The widget to display inside the button.
  final Widget child;

  /// Callback function triggered when the button is tapped.
  final VoidCallback onTap;

  /// Optional callback function triggered when the button is long pressed.
  final VoidCallback? onLongPress;

  /// Duration of the scale animation when the button is pressed.
  final Duration duration;

  /// Background color of the button. Defaults to brand primary color.
  final Color? color;

  /// Background color when the button is disabled.
  final Color? disabledColor;

  /// Elevation of the button (shadow depth).
  final double? elevation;

  /// Border radius geometry for the button shape.
  final BorderRadiusGeometry? borderRadius;

  /// Custom shape for the button. Overrides borderRadius if provided.
  final ShapeBorder? shape;

  /// Internal padding of the button content.
  final EdgeInsetsGeometry? padding;

  /// Whether the button is enabled and can be pressed.
  final bool enabled;

  /// Whether the button is in loading state (shows circular progress indicator).
  final bool loading;

  /// Animation curve used for the scale transition.
  final Curve curve;

  /// Scale factor applied when the button is pressed (0.0 to 1.0).
  final double scale;

  /// Accessibility label for screen readers.
  final String? semanticLabel;

  /// Size constraints for the button.
  final BoxConstraints? constraints;

  /// Fixed width of the button. If null, uses intrinsic width.
  final double? width;

  /// Fixed height of the button. If null, uses intrinsic height.
  final double? height;

  /// Creates an [AppButton] with the specified properties.
  ///
  /// The [onTap] and [child] parameters are required.
  /// All other parameters have sensible defaults.
  const AppButton({
    super.key,
    required this.onTap,
    required this.child,
    this.onLongPress,
    this.duration = const Duration(milliseconds: 100),
    this.color,
    this.disabledColor,
    this.elevation,
    this.borderRadius,
    this.shape,
    this.padding,
    this.enabled = true,
    this.loading = false,
    this.curve = Curves.easeInOut,
    this.scale = 0.92,
    this.semanticLabel,
    this.constraints,
    this.width,
    this.height,
  });

  @override
  State<AppButton> createState() => _AppButtonState();
}

/// Private state class for [AppButton] that handles animation and tap logic.
class _AppButtonState extends State<AppButton> with SingleTickerProviderStateMixin {
  /// Animation controller for the scale animation.
  late AnimationController _controller;

  /// Scale animation that transitions between 1.0 and the specified scale factor.
  late Animation<double> _animation;

  /// Flag to prevent multiple simultaneous animations.
  bool _isAnimating = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: widget.duration, vsync: this);
    _animation = Tween<double>(begin: 1.0, end: widget.scale).animate(CurvedAnimation(parent: _controller, curve: widget.curve));
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse().then((_) {
          if (widget.enabled && !widget.loading) widget.onTap();
          _isAnimating = false;
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  /// Handles tap events by triggering the scale animation.
  /// Prevents multiple simultaneous animations and respects enabled/loading states.
  void _handleTap() {
    if (_isAnimating || !widget.enabled || widget.loading) return;
    _isAnimating = true;
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    final Color effectiveColor = widget.enabled ? (widget.color ?? AppColors.stateBrandDefault500) : (widget.disabledColor ?? AppColors.stateBrandDefault500.withValues(alpha: 0.5));
    final BorderRadiusGeometry effectiveRadius = widget.borderRadius ?? BorderRadius.circular(AppCorner.radius32);
    final ShapeBorder effectiveShape = widget.shape ?? RoundedRectangleBorder(borderRadius: effectiveRadius);
    final double effectiveElevation = widget.elevation ?? 0;

    Widget content = widget.loading ? const SizedBox(width: 24, height: 24, child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.white), strokeWidth: 2.5)) : widget.child;

    // Combine explicit width/height with user-provided constraints
    BoxConstraints effectiveConstraints = widget.constraints ?? const BoxConstraints();
    if (widget.width != null || widget.height != null) {
      effectiveConstraints = effectiveConstraints.copyWith(minWidth: widget.width, maxWidth: widget.width, minHeight: widget.height, maxHeight: widget.height);
    } else {
      effectiveConstraints = effectiveConstraints.copyWith(minWidth: 0, minHeight: 0);
    }

    Widget button = Material(
      color: effectiveColor,
      shape: effectiveShape,
      elevation: effectiveElevation,
      child: Container(padding: widget.padding, alignment: Alignment.center, constraints: effectiveConstraints, child: content),
    );

    // Apply IntrinsicWidth/Height only if width/height are not specified
    if (widget.width == null) {
      button = IntrinsicWidth(child: button);
    }
    if (widget.height == null) {
      button = IntrinsicHeight(child: button);
    }

    return Semantics(
      button: true,
      enabled: widget.enabled,
      label: widget.semanticLabel,
      child: GestureDetector(
        onTap: widget.enabled && !widget.loading ? _handleTap : null,
        onLongPress: widget.enabled && !widget.loading ? widget.onLongPress : null,
        child: ScaleTransition(scale: _animation, child: button),
      ),
    );
  }
}
