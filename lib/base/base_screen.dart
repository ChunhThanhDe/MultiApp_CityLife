import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class BaseScreen<T extends GetxController> extends GetView<T> {
  const BaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    if (!vm.initialized) {
      initController();
    }

    return GestureDetector(
      onTap: opTapScreen,
      child: Container(
        color: unSafeAreaColor,
        child: wrapWithSafeArea
            ? SafeArea(
                top: setTopSafeArea,
                bottom: setBottomSafeArea,
                child: _buildScaffold(context),
              )
            : _buildScaffold(context),
      ),
    );
  }

  Widget _buildScaffold(BuildContext context) {
    return Scaffold(
      key: keyScaffold,
      extendBody: extendBodyBehindAppBar,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      appBar: buildAppBar(context),
      body: buildScreen(context),
      backgroundColor: screenBackgroundColor,
      bottomNavigationBar: buildBottomNavigationBar(context),
      floatingActionButtonLocation: floatingActionButtonLocation,
      floatingActionButton: buildFloatingActionButton(),
    );
  }

  @protected
  Widget buildScreen(BuildContext context);

  @protected
  Widget? buildFloatingActionButton() => null;

  @protected
  FloatingActionButtonLocation? get floatingActionButtonLocation => FloatingActionButtonLocation.centerDocked;

  @protected
  Widget? buildBottomNavigationBar(BuildContext context) => null;

  @protected
  PreferredSizeWidget? buildAppBar(BuildContext context) => null;

  @protected
  Color? get unSafeAreaColor => Colors.white;

  @protected
  Color? get screenBackgroundColor => Colors.white;

  //Prevent body from automatically adjusting when the keyboard appears
  @protected
  bool get resizeToAvoidBottomInset => false;

  // Enable/disable extending the body behind other parts
  @protected
  bool get extendBodyBehindAppBar => false;

  // Enable/disable wrapping the body with safe area
  @protected
  bool get wrapWithSafeArea => true;

  // Enable/disable bottom safe area
  @protected
  bool get setBottomSafeArea => true;

  // Enable/disable top safe area
  @protected
  bool get setTopSafeArea => true;

  @protected
  VoidCallback? get opTapScreen => FocusScope.of(Get.context!).unfocus;

  @protected
  Key? get keyScaffold => null;

  void initController() {
    vm.initialized;
  }

  @protected
  T get vm => controller;
}
