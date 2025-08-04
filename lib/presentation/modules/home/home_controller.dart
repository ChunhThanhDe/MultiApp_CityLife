import 'package:get/get.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/domain/models/response/get_store_general_data.dart';
import 'package:sixam_mart_user/domain/repositories/store_repository.dart';
import 'package:sixam_mart_user/presentation/modules/root/root_controller.dart';
import 'package:sixam_mart_user/presentation/modules/service/service_controller.dart';
import 'package:sixam_mart_user/presentation/shared/utils/banner_data_utils.dart';

class HomeController extends BaseController {
  final StoreRepository _storeRepository = Get.find<StoreRepository>();

  @override
  void onInit() {
    super.onInit();
    getStoreData();
  }

  final RxList<ServiceEntity> serviceData = RxList<ServiceEntity>([]);
  final RxList<BannerSection> dynamicSections = RxList<BannerSection>([]);

  Future<void> getStoreData() async {
    // await safeExecute(() async {
    final result = await _storeRepository.getHomeData(appProvider.userInfo.value.id);
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
          dynamicSections.addAll(BannerDataUtils.getBannerSections(responseData.data, serviceType: 'fast_food'));
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

  Future<void> refreshData() async {
    await getStoreData();
  }

  // Navigation method to handle service type tap
  void navigateToServiceWithType(String serviceType) {
    // Special handling for laundry service type

    // Get RootController to change tabs
    final rootController = Get.find<RootController>();

    // Change to Service tab
    rootController.changeTab(RootTab.service);

    // Get ServiceController and load data for specific service type
    final serviceController = Get.find<ServiceController>();
    serviceController.loadServiceTypeData(serviceType);
  }
}
