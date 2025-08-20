import 'package:flutter/material.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/domain/models/response/get_store_general_data.dart';
import 'package:sixam_mart_user/presentation/modules/service/core/base_service_ui_controller.dart';

/// Base abstract screen for all service UI types
/// Provides common structure and enforces consistent interface
abstract class BaseServiceUIScreen<T extends BaseServiceUIController> extends BaseScreen<T> {
  const BaseServiceUIScreen({super.key});

  @override
  bool get wrapWithSafeArea => false;

  /// UI Type that this screen represents
  ServiceUIType get uiType;

  @override
  Widget buildScreen(BuildContext context) {
    return RefreshIndicator(
      onRefresh: controller.refreshData,
      child: buildUIContent(context),
    );
  }

  /// Build the specific UI content for this UI type
  /// Must be implemented by concrete UI screens
  Widget buildUIContent(BuildContext context);

  /// Build empty state widget
  /// Can be overridden for UI-specific empty states
  Widget buildEmptyState() {
    return const Center(
      child: Text('No data available'),
    );
  }

  /// Build loading state widget
  /// Can be overridden for UI-specific loading states
  Widget buildLoadingState() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}