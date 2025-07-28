import 'package:get/get.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/base/error_response.dart';
import 'package:sixam_mart_user/base/network_exceptions.dart';
import 'package:sixam_mart_user/domain/models/response/get_stores_response.dart';
import 'package:sixam_mart_user/domain/repositories/store_repository.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_overlay.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_snackbar.dart';
import 'package:sixam_mart_user/presentation/shared/utils/service_data_utils.dart';

class ServiceController extends BaseController {
  final StoreRepository _storeRepository = Get.find<StoreRepository>();

  @override
  void onReady() {
    super.onReady();
    loadServiceTypeData('food');
  }

  final Rx<GetStoresResponse?> currentData = Rx<GetStoresResponse?>(null);
  final Rx<String?> currentServiceType = Rx<String?>('food');

  // Method to load data for specific service type
  void loadServiceTypeData(String serviceType) async {
    currentServiceType.value = serviceType;
    await showAppOverlayLoading(future: _loadServiceData(serviceType));
  }

  // Clean service data loading
  Future<void> _loadServiceData(String serviceType) async {
    await safeExecute(() async {
      final result = await _storeRepository.getStoreData(serviceType);
      switch (result) {
        case Success(:final response):
          if (response.statusCode != 200) {
            final errorResponse = ErrorResponse.fromJson(response.data);
            showAppSnackBar(title: errorResponse.errors.first.message, type: SnackBarType.error);
            return;
          }
          final storesData = GetStoresResponse.fromJson(response.data);
          currentData.value = storesData;
        case Failure(:final error):
          showAppSnackBar(title: NetworkExceptions.getErrorMessage(error), type: SnackBarType.error);
      }
    });
  }

  // Auto-detect all sections from API response dynamically
  List<SectionMetadata> get autoDetectedSections {
    return ServiceDataUtils.getAutoDetectedSections(currentData.value);
  }

  // Generate completely dynamic sections
  List<ServiceSection> get dynamicSections {
    return ServiceDataUtils.getDynamicSections(currentData.value);
  }

  // Categories from API data with dynamic assets based on service type
  List<Category> get categories => ServiceDataUtils.getCategories(currentData.value);

  Future<void> refreshData() async {
    final serviceType = currentServiceType.value ?? 'food';
    loadServiceTypeData(serviceType);
  }
}
