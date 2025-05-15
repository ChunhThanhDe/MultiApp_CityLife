import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

showLoadingOverlay({required Future<dynamic> api, BuildContext? context, Widget? child, bool isShowLoading = true}) {
  _AppLoadingOverlay.show(api: api, context: context, child: child, isShowLoading: isShowLoading);
}

class _AppLoadingOverlay {
  static OverlayEntry? overlayEntry;
  static Future<dynamic> show({required Future<dynamic> api, BuildContext? context, Widget? child, bool isShowLoading = true}) async {
    if (isShowLoading) {
      createHighlightOverlay(context: context ?? Get.context!, child: child);
    }
    Stopwatch stopwatch = Stopwatch()..start();
    final result = await api;
    stopwatch.stop();
    if (stopwatch.elapsedMilliseconds < 200) {
      await Future.delayed(const Duration(milliseconds: 300));
    }
    if (isShowLoading) {
      removeHighlightOverlay();
    }
    return result;
  }

  static removeHighlightOverlay() {
    overlayEntry?.remove();
    overlayEntry?.dispose();
    overlayEntry = null;
  }

  static createHighlightOverlay({
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
              child: Center(
                child: child ??
                    Container(
                      width: 64,
                      height: 64,
                      decoration: BoxDecoration(color: Colors.black54, borderRadius: BorderRadius.circular(12)),
                      child: const CupertinoActivityIndicator(
                        color: Colors.white,
                      ),
                    ),
              ),
            ),
            onTap: () {},
          ),
        );
      },
    );

    overlayState.insert(overlayEntry!);
  }
}
