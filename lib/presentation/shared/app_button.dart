import 'package:flutter/material.dart';
import 'package:sixam_mart_user/theme.dart';

class AppButton extends StatefulWidget {
  final Widget child;
  final VoidCallback onTap;
  final VoidCallback? onLongPress;
  final Duration duration;
  final Color? color;
  final Color? disabledColor;
  final double? elevation;
  final BorderRadiusGeometry? borderRadius;
  final ShapeBorder? shape;
  final EdgeInsetsGeometry? padding;
  final bool enabled;
  final bool loading;
  final Curve curve;
  final double scale;
  final String? semanticLabel;
  final BoxConstraints? constraints;
  final double? width;
  final double? height;

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

class _AppButtonState extends State<AppButton> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _isAnimating = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    );
    _animation = Tween<double>(begin: 1.0, end: widget.scale).animate(
      CurvedAnimation(
        parent: _controller,
        curve: widget.curve,
      ),
    );
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

  void _handleTap() {
    if (_isAnimating || !widget.enabled || widget.loading) return;
    _isAnimating = true;
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    final Color effectiveColor =
        widget.enabled ? (widget.color ?? Figma.theme.tokenColorsStateBrandDefault500) : (widget.disabledColor ?? Figma.theme.tokenColorsStateBrandDefault500.withValues(alpha: 0.5));
    final BorderRadiusGeometry effectiveRadius = widget.borderRadius ?? BorderRadius.circular(Figma.corner.radius32);
    final ShapeBorder effectiveShape = widget.shape ?? RoundedRectangleBorder(borderRadius: effectiveRadius);
    final double effectiveElevation = widget.elevation ?? 0;

    Widget content = widget.loading
        ? const SizedBox(
            width: 24,
            height: 24,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              strokeWidth: 2.5,
            ),
          )
        : widget.child;

    // Combine explicit width/height with user-provided constraints
    BoxConstraints effectiveConstraints = widget.constraints ?? const BoxConstraints();
    if (widget.width != null || widget.height != null) {
      effectiveConstraints = effectiveConstraints.copyWith(
        minWidth: widget.width,
        maxWidth: widget.width,
        minHeight: widget.height,
        maxHeight: widget.height,
      );
    } else {
      effectiveConstraints = effectiveConstraints.copyWith(
        minWidth: 0,
        minHeight: 0,
      );
    }

    Widget button = Material(
      color: effectiveColor,
      shape: effectiveShape,
      elevation: effectiveElevation,
      child: Container(
        padding: widget.padding,
        alignment: Alignment.center,
        constraints: effectiveConstraints,
        child: content,
      ),
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
        child: ScaleTransition(
          scale: _animation,
          child: button,
        ),
      ),
    );
  }
}
