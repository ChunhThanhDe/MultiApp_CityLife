import 'package:get/get.dart';
import 'package:sixam_mart_user/domain/models/response/get_store_general_data.dart';
import 'package:sixam_mart_user/domain/models/response/get_stores_response.dart';
import 'package:sixam_mart_user/presentation/modules/service/core/base_service_ui_controller.dart';
import 'package:sixam_mart_user/presentation/shared/utils/banner_data_utils.dart';

/// Controller for UI1 type services (Food-like interface)
/// Handles dynamic data loading and banner sections
class ServiceUI1Controller extends BaseServiceUIController {
  @override
  ServiceUIType get uiType => ServiceUIType.ui1;

  /// Categories for this UI type
  final RxList<Category> categories = RxList<Category>([]);

  /// Dynamic banner sections
  final RxList<BannerSection> dynamicSections = RxList<BannerSection>([]);

  @override
  void initializeUI() {
    // Load data from service controller
    _loadUIData();
    
    // Listen to service controller changes
    ever(serviceController.categories, (List<Category> newCategories) {
      categories.assignAll(newCategories);
    });
    
    ever(serviceController.dynamicSections, (List<BannerSection> newSections) {
      dynamicSections.assignAll(newSections);
    });
  }

  void _loadUIData() {
    // Sync with service controller data
    categories.assignAll(serviceController.categories);
    dynamicSections.assignAll(serviceController.dynamicSections);
  }

  @override
  void onServiceTypeChanged(ServiceEntity newService) {
    super.onServiceTypeChanged(newService);
    // Clear current data when service changes
    categories.clear();
    dynamicSections.clear();
  }

  @override
  Future<void> refreshData() async {
    await super.refreshData();
    _loadUIData();
  }
}