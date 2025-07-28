import 'package:get/get.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/domain/enums/service_type.dart';
import 'package:sixam_mart_user/domain/models/response/get_store_general_data.dart';
import 'package:sixam_mart_user/domain/models/response/get_stores_response.dart';
import 'package:sixam_mart_user/domain/repositories/store_repository.dart';
import 'package:sixam_mart_user/presentation/modules/root/root_controller.dart';
import 'package:sixam_mart_user/presentation/shared/utils/service_data_utils.dart';

class HomeController extends BaseController {
  final StoreRepository _storeRepository = Get.find<StoreRepository>();

  @override
  void onInit() {
    super.onInit();
    getStoreData();
  }

  final RxList<ServiceEntity> serviceData = RxList<ServiceEntity>([]);
  final RxList<ServiceSection> dynamicSections = RxList<ServiceSection>([]);

  Future<void> getStoreData() async {
    // await safeExecute(() async {
    final result = await _storeRepository.getStoreGeneralData(appProvider.userInfo.value.id);
    switch (result) {
      case Success(:final response):
        final responseData = GetStoreGeneralData.fromJson(response.data);

        if (responseData.services?.data != null) {
          serviceData.clear();
          serviceData.addAll(responseData.services?.data ?? []);
        }
        // Process banner data if available
        if (responseData.data != null && responseData.data is Map<String, dynamic>) {
          dynamicSections.clear();
          dynamicSections.addAll(ServiceDataUtils.getDynamicSectionsFromMap(responseData.data));
        }
      case Failure():
    }
    // });
  }

  String getGreetingByTime() {
    final now = DateTime.now();
    final hour = now.hour;

    if (hour >= 5 && hour < 12) {
      return 'Good morning ☀️';
    } else if (hour >= 12 && hour < 17) {
      return 'Good afternoon 🌤️';
    } else if (hour >= 17 && hour < 21) {
      return 'Good evening 🌆';
    } else {
      return 'Good night 🌙';
    }
  }

  // Navigation method to handle service type tap
  void navigateToServiceWithType(String serviceType) {
    // Get RootController to change tabs
    final rootController = Get.find<RootController>();

    // Change to Service tab
    rootController.changeTab(RootTab.service);

    // Get ServiceController and load data for specific service type
    // final serviceController = Get.find<ServiceController>();
    // serviceController.loadServiceTypeData(serviceType);
  }

  // Example method showing how to use ServiceDataUtils in home controller
  List<ServiceSection> processServiceDataForHome(GetStoresResponse? data) {
    return ServiceDataUtils.processServiceData(data);
  }

  // Example method to get categories with assets
  List<Category> getCategoriesWithAssets(GetStoresResponse? data, ServiceType serviceType) {
    return ServiceDataUtils.getCategoriesWithAssets(data, serviceType);
  }

  // Example method to get auto-detected sections
  List<SectionMetadata> getAutoDetectedSections(GetStoresResponse? data) {
    return ServiceDataUtils.getAutoDetectedSections(data);
  }

  // Example method to get dynamic sections
  List<ServiceSection> getDynamicSections(GetStoresResponse? data) {
    return ServiceDataUtils.getDynamicSections(data);
  }
}
