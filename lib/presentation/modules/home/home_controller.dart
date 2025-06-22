import 'package:get/get.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/base/base_response.dart';
import 'package:sixam_mart_user/base/error_response.dart';
import 'package:sixam_mart_user/domain/models/response/get_home_banner_response.dart';
import 'package:sixam_mart_user/domain/models/response/get_module_response.dart';
import 'package:sixam_mart_user/domain/repositories/module.repository.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_snackbar.dart';
import 'package:sixam_mart_user/presentation/shared/unified_banner_widget.dart';

class HomeController extends BaseController {
  final ModuleRepository _moduleRepository = Get.find<ModuleRepository>();

  @override
  void onInit() {
    super.onInit();
    getModules();
    getHomeBanner();
  }

  final RxList<GetModuleResponse> modules = <GetModuleResponse>[].obs;
  final Rx<GetHomeBannerResponse?> homeBannerData = Rx<GetHomeBannerResponse?>(null);

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

  Future<void> getModules() async {
    await safeExecute(() async {
      final result = await _moduleRepository.getModules();
      switch (result) {
        case Success(:final response):
          if (response.statusCode != 200) {
            final errorResponse = ErrorResponse.fromJson(response.data);
            showAppSnackBar(title: errorResponse.errors.first.message, type: SnackBarType.error);
            return;
          }
          final baseResponse = BaseResponse.fromJson(response.data);
          final modules = (baseResponse.data as List).map((e) => GetModuleResponse.fromJson(e)).toList();
          this.modules.clear();
          this.modules.addAll(modules);
        case Failure(:final error):
          showAppSnackBar(title: error.toString(), type: SnackBarType.error);
      }
    });
  }

  Future<void> getHomeBanner() async {
    await safeExecute(() async {
      final result = await _moduleRepository.getHomeBanner(moduleId: 4, userId: 10);
      switch (result) {
        case Success(:final response):
          if (response.statusCode != 200) {
            final errorResponse = ErrorResponse.fromJson(response.data);
            showAppSnackBar(title: errorResponse.errors.first.message, type: SnackBarType.error);
            return;
          }
          final bannerData = GetHomeBannerResponse.fromJson(response.data);
          homeBannerData.value = bannerData;
        case Failure(:final error):
          showAppSnackBar(title: error.toString(), type: SnackBarType.error);
      }
    });
  }

  Future<void> refreshData() async {
    await Future.wait([getModules(), getHomeBanner()]);
  }

  // Helper methods to get data from the banner response
  List<StoreItem> get todayOffers {
    if (homeBannerData.value == null) return [];

    final offersSection = homeBannerData.value!.sections.where((section) => section.id == 'offers').firstOrNull;

    if (offersSection == null) return [];

    // Get all items from all subsections
    final List<StoreItem> allItems = [];
    for (final subsection in offersSection.subsections) {
      allItems.addAll(subsection.items);
    }

    return allItems;
  }

  List<BannerSubsection> get offerSubsections {
    if (homeBannerData.value == null) return [];

    final offersSection = homeBannerData.value!.sections.where((section) => section.id == 'offers').firstOrNull;

    return offersSection?.subsections ?? [];
  }

  UserInfo? get userInfo => homeBannerData.value?.user;

  // Dynamic banner items for any subsection
  List<BannerItem> getBannerItemsForSubsection(int subsectionIndex, {BannerType bannerType = BannerType.brandLogoName}) {
    final subsections = offerSubsections;
    if (subsections.isEmpty || subsectionIndex >= subsections.length) return [];

    final subsection = subsections[subsectionIndex];

    return subsection.items.map((item) {
      return BannerItem(
        title: bannerType == BannerType.bannerSingleImage ? '' : item.name,
        imageUrl: item.coverImage ?? '',
        logoUrl: item.logo,
        onTap: () {
          // Navigate to store detail page
          if (bannerType == BannerType.bannerFloatingLogo) {
            Get.toNamed(AppRoutes.store);
          }
        },
        deliveryFee: bannerType == BannerType.bannerDiscount ? item.deliveryFee : null,
        isVerified: bannerType == BannerType.bannerDiscount ? true : null,
      );
    }).toList();
  }
}
