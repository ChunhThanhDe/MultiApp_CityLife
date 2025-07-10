import 'package:get/get.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/base/error_response.dart';
import 'package:sixam_mart_user/base/network_exceptions.dart';
import 'package:sixam_mart_user/domain/models/response/get_stores_response.dart';
import 'package:sixam_mart_user/domain/repositories/module.repository.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/modules/root/root_controller.dart';
import 'package:sixam_mart_user/presentation/modules/service/service_controller.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_snackbar.dart';
import 'package:sixam_mart_user/presentation/shared/unified_banner_widget.dart';

enum ServiceType { food, grocery, delivery, laundry, ticket, cleaning, seeMore }

class Service {
  final String title;
  final String image;
  final ServiceType serviceType;

  const Service({required this.title, required this.image, required this.serviceType});
}

class HomeController extends BaseController {
  final ModuleRepository _moduleRepository = Get.find<ModuleRepository>();

  @override
  void onInit() {
    super.onInit();
    getFastFoodStores();
    getGroceryStores();
  }

  final Rx<GetStoresResponse?> fastFoodData = Rx<GetStoresResponse?>(null);
  final Rx<GetStoresResponse?> groceryData = Rx<GetStoresResponse?>(null);

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

  final List<Service> services = [
    Service(title: 'Food', image: Assets.images.imgFood.path, serviceType: ServiceType.food),
    Service(title: 'Grocery', image: Assets.images.imgGrocery.path, serviceType: ServiceType.grocery),
    Service(title: 'Delivery', image: Assets.images.imgDelivery.path, serviceType: ServiceType.delivery),
    Service(title: 'Laundry', image: Assets.images.imgLaundry.path, serviceType: ServiceType.laundry),
    Service(title: 'Ticket', image: Assets.images.imgTicketPlane.path, serviceType: ServiceType.ticket),
    Service(title: 'Cleaning', image: Assets.images.imgCleaning.path, serviceType: ServiceType.cleaning),
    Service(title: 'See More', image: Assets.images.imgSeeMore.path, serviceType: ServiceType.seeMore),
  ];

  Future<void> getFastFoodStores() async {
    await safeExecute(() async {
      final result = await _moduleRepository.getFastFoodStores(zoneId: 1, moduleId: 3, id: 1);
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

  Future<void> getGroceryStores() async {
    await safeExecute(() async {
      final result = await _moduleRepository.getGroceryStores(zoneId: 1, moduleId: 4, id: 1);
      switch (result) {
        case Success(:final response):
          if (response.statusCode != 200) {
            final errorResponse = ErrorResponse.fromJson(response.data);
            showAppSnackBar(title: errorResponse.errors.first.message, type: SnackBarType.error);
            return;
          }
          final storesData = GetStoresResponse.fromJson(response.data);
          groceryData.value = storesData;
        case Failure(:final error):
          showAppSnackBar(title: NetworkExceptions.getErrorMessage(error), type: SnackBarType.error);
      }
    });
  }

  Future<void> refreshData() async {
    await Future.wait([getFastFoodStores(), getGroceryStores()]);
  }

  // Navigation method to handle service type tap
  void navigateToServiceWithType(ServiceType serviceType) {
    // Get RootController to change tabs
    final rootController = Get.find<RootController>();

    // Change to Service tab
    rootController.changeTab(RootTab.service);

    // Get ServiceController and load data for specific service type
    final serviceController = Get.find<ServiceController>();
    serviceController.loadServiceTypeData(serviceType);
  }

  // Navigation method to handle service category tap
  void navigateToServiceWithCategory(Category category) {
    // Get RootController to change tabs
    final rootController = Get.find<RootController>();

    // Change to Service tab
    rootController.changeTab(RootTab.service);

    // Get ServiceController and load data for specific category
    final serviceController = Get.find<ServiceController>();
    serviceController.loadCategoryData(category);
  }

  // Helper methods to get data from the new API responses
  List<BannerItem> get todayOffers {
    final List<BannerItem> offers = [];

    // Add fast food today offers
    final fastFoodOffers = fastFoodData.value?.todayOffer ?? [];
    offers.addAll(
      fastFoodOffers.map(
        (store) => BannerItem(
          title: store.name,
          imageUrl: store.coverPhoto,
          logoUrl: store.logo,
          deliveryFee: store.distanceKm != null ? store.distanceKm! * 2 : 4.99,
          isVerified: store.rating > 4.0,
          time: store.deliveryTime,
          onTap: () {
            Get.toNamed(AppRoutes.store);
          },
        ),
      ),
    );

    // Add grocery today offers
    final groceryOffers = groceryData.value?.todayOffer ?? [];
    offers.addAll(
      groceryOffers.map(
        (store) => BannerItem(
          title: store.name,
          imageUrl: store.coverPhoto,
          logoUrl: store.logo,
          deliveryFee: store.distanceKm != null ? store.distanceKm! * 1.5 : 3.99,
          isVerified: store.rating > 4.0,
          time: store.deliveryTime,
          onTap: () {
            Get.toNamed(AppRoutes.store);
          },
        ),
      ),
    );

    return offers;
  }

  List<HomeBannerSubsection> get offerSubsections {
    final List<HomeBannerSubsection> subsections = [];

    // Fast Food sections
    if (fastFoodData.value != null) {
      final data = fastFoodData.value!;

      if (data.shopNearYou.isNotEmpty) {
        subsections.add(HomeBannerSubsection(title: 'Fast Food Near You', items: data.shopNearYou));
      }

      if (data.topOffer.isNotEmpty) {
        subsections.add(HomeBannerSubsection(title: 'Top Fast Food Offers', items: data.topOffer));
      }

      if (data.popularNearYou.isNotEmpty) {
        subsections.add(HomeBannerSubsection(title: 'Popular Fast Food', items: data.popularNearYou));
      }
    }

    // Grocery sections
    if (groceryData.value != null) {
      final data = groceryData.value!;

      if (data.shopNearYou.isNotEmpty) {
        subsections.add(HomeBannerSubsection(title: 'Grocery Stores Near You', items: data.shopNearYou));
      }

      if (data.topOffer.isNotEmpty) {
        subsections.add(HomeBannerSubsection(title: 'Top Grocery Offers', items: data.topOffer));
      }

      if (data.popularNearYou.isNotEmpty) {
        subsections.add(HomeBannerSubsection(title: 'Popular Grocery Items', items: data.popularNearYou));
      }
    }

    return subsections;
  }

  UserInfo? get userInfo => fastFoodData.value?.userLocation != null
      ? UserInfo(id: fastFoodData.value!.userLocation.id, latitude: fastFoodData.value!.userLocation.latitude, longitude: fastFoodData.value!.userLocation.longitude)
      : null;

  // Dynamic banner items for any subsection
  List<BannerItem> getBannerItemsForSubsection(int subsectionIndex, {BannerType bannerType = BannerType.brandLogoName}) {
    final subsections = offerSubsections;
    if (subsections.isEmpty || subsectionIndex >= subsections.length) return [];

    final subsection = subsections[subsectionIndex];

    return subsection.items.map((item) {
      if (item is Store) {
        return BannerItem(
          title: bannerType == BannerType.bannerSingleImage ? '' : item.name,
          imageUrl: item.coverPhoto,
          logoUrl: item.logo,
          deliveryFee: bannerType == BannerType.bannerDiscount ? (item.distanceKm != null ? item.distanceKm! * 2 : 4.99) : null,
          isVerified: bannerType == BannerType.bannerDiscount ? item.rating > 4.0 : null,
          time: bannerType == BannerType.bannerDiscount ? item.deliveryTime : null,
          onTap: () {
            Get.toNamed(AppRoutes.store);
          },
        );
      } else if (item is Product) {
        return BannerItem(
          title: bannerType == BannerType.bannerSingleImage ? '' : (item.name?.isNotEmpty == true ? item.name! : 'Product'),
          imageUrl: item.image,
          onTap: () {
            // Navigate to product detail
          },
        );
      }

      // Fallback
      return BannerItem(title: '', imageUrl: '', onTap: () {});
    }).toList();
  }
}

// Helper classes to maintain compatibility with existing UI
class HomeBannerSubsection {
  final String title;
  final List<dynamic> items; // Can be Store or Product

  HomeBannerSubsection({required this.title, required this.items});
}

class UserInfo {
  final int id;
  final double latitude;
  final double longitude;

  UserInfo({required this.id, required this.latitude, required this.longitude});
}
