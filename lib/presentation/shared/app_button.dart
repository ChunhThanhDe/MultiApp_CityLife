import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppButton extends StatefulWidget {
  final Widget child;
  final Function() onTap;
  final Duration duration;
  const AppButton(
      {super.key,
      required this.onTap,
      required this.child,
      this.duration = const Duration(milliseconds: 100)});

  @override
  State<AppButton> createState() {
    return _AppButtonState();
  }
}

class _AppButtonState extends State<AppButton> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  OverlayEntry? overlayEntry;
  bool _isAnimating = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    );

    _animation = Tween<double>(begin: 1.0, end: 0.92).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse().then(
          (value) {
            widget.onTap.call();
            removeHighlightOverlay();
            _isAnimating = false;
          },
        );
      }
    });
  }

  removeHighlightOverlay() {
    overlayEntry?.remove();
    overlayEntry?.dispose();
    overlayEntry = null;
  }

  createHighlightOverlay({
    required BuildContext context,
    Widget? child,
  }) {
    removeHighlightOverlay();
    OverlayState overlayState = Overlay.of(context);
    assert(overlayEntry == null);

    overlayEntry = OverlayEntry(
      builder: (BuildContext context) {
        return AnimatedPositioned(
          width: Get.width,
          height: Get.height,
          duration: Duration.zero,
          child: GestureDetector(
            child: Container(
              color: Colors.transparent,
            ),
            onTap: () {},
          ),
        );
      },
    );

    overlayState.insert(overlayEntry!);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onTap() {
    if (_isAnimating) return;
    _isAnimating = true;
    _controller.forward();
    createHighlightOverlay(context: context);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _onTap(),
      child: ScaleTransition(
        scale: _animation,
        child: Container(
          color: Colors.transparent,
          child: IgnorePointer(
            child: widget.child,
          ),
        ),
      ),
    );
  }
}
