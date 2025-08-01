import 'package:get/get.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/domain/models/response/get_store_general_data.dart';
import 'package:sixam_mart_user/domain/repositories/store_repository.dart';
import 'package:sixam_mart_user/presentation/modules/root/root_controller.dart';
import 'package:sixam_mart_user/presentation/modules/service/service_controller.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_snackbar.dart';
import 'package:sixam_mart_user/presentation/shared/unified_banner_widget.dart';

class Service {
  final String title;
  final String image;
  final ServiceType serviceType;
  final String description;

  Service({required this.title, required this.image, required this.serviceType, required this.description});

  /// Get service by serviceType from the services list
  static Service? getServiceByType(ServiceType serviceType) {
    try {
      return services.firstWhere((service) => service.serviceType == serviceType);
    } catch (e) {
      return null;
    }
  }

  static List<Service> services = [
    Service(title: 'Food', image: Assets.images.imgFood.path, serviceType: ServiceType.food, description: 'Order delicious meals from your favorite restaurants with fast delivery to your doorstep.'),
    Service(title: 'Grocery', image: Assets.images.imgGrocery.path, serviceType: ServiceType.grocery, description: 'Get fresh groceries and daily essentials delivered quickly to your home.'),
    Service(title: 'Delivery', image: Assets.images.imgDelivery.path, serviceType: ServiceType.delivery, description: 'Fast and reliable delivery service for all your package and document needs.'),
    Service(title: 'Laundry', image: Assets.images.imgLaundry.path, serviceType: ServiceType.laundry, description: 'Professional laundry and dry cleaning services with pickup and delivery options.'),
    Service(title: 'Ticket', image: Assets.images.imgTicketPlane.path, serviceType: ServiceType.ticket, description: 'Book tickets for flights, events, and transportation with ease and convenience.'),
    Service(title: 'Cleaning', image: Assets.images.imgCleaning.path, serviceType: ServiceType.cleaning, description: 'Professional home and office cleaning services to keep your space spotless.'),
    Service(title: 'See More', image: Assets.images.imgSeeMore.path, serviceType: ServiceType.seeMore, description: 'Explore additional services and discover new ways we can help you.'),
  ];
}

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

  // final List<Service> services = [
  //   Service(title: 'Food', image: Assets.images.imgFood.path, serviceType: ServiceType.food, description: 'Order delicious meals from your favorite restaurants with fast delivery to your doorstep.'),
  //   Service(title: 'Grocery', image: Assets.images.imgGrocery.path, serviceType: ServiceType.grocery, description: 'Get fresh groceries and daily essentials delivered quickly to your home.'),
  //   Service(title: 'Delivery', image: Assets.images.imgDelivery.path, serviceType: ServiceType.delivery, description: 'Fast and reliable delivery service for all your package and document needs.'),
  //   Service(title: 'Laundry', image: Assets.images.imgLaundry.path, serviceType: ServiceType.laundry, description: 'Professional laundry and dry cleaning services with pickup and delivery options.'),
  //   Service(title: 'Ticket', image: Assets.images.imgTicketPlane.path, serviceType: ServiceType.ticket, description: 'Book tickets for flights, events, and transportation with ease and convenience.'),
  //   Service(title: 'Cleaning', image: Assets.images.imgCleaning.path, serviceType: ServiceType.cleaning, description: 'Professional home and office cleaning services to keep your space spotless.'),
  //   Service(title: 'See More', image: Assets.images.imgSeeMore.path, serviceType: ServiceType.seeMore, description: 'Explore additional services and discover new ways we can help you.'),
  // ];

  Future<void> getFastFoodStores() async {
    await safeExecute(() async {
      final result = await _serviceRepository.getServiceData(ServiceType.food);
      switch (result) {
        case Success(:final response):
          if (response.statusCode != 200) {
            final errorResponse = ErrorResponse.fromJson(response.data);
            showAppSnackBar(title: errorResponse.errors.first.message, type: SnackBarType.error);
            return;
          }
          final storesData = GetStoresResponse.fromJson(response.data);
          fastFoodData.value = storesData;
        case Failure(:final error):
          showAppSnackBar(title: NetworkExceptions.getErrorMessage(error), type: SnackBarType.error);
      }
    });
  }

  Future<void> refreshData() async {
    await Future.wait([getFastFoodStores()]);
  }

  // Navigation method to handle service type tap
  void navigateToServiceWithType(ServiceType serviceType) {
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
