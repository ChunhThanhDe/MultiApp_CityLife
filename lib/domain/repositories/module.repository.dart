import 'package:dio/dio.dart';
import 'package:sixam_mart_user/app/constants/app_strings.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_repository.dart';
import 'package:sixam_mart_user/domain/enums/service_type.dart';

class ModuleApiPath {
  static const String getFastFoodStores = '/api/v1/stores/fast_food';
  static const String getGroceryStores = '/api/v1/stores/grocery';
  static const String getDeliveryServices = '/api/v1/services/delivery';
  static const String getLaundryServices = '/api/v1/services/laundry';
  static const String getTicketServices = '/api/v1/services/ticket';
  static const String getCleaningServices = '/api/v1/services/cleaning';
}

// Clean ServiceConfig class instead of messy Map
class ServiceConfig {
  final int moduleId;
  final String apiPath;
  final int defaultZoneId;
  final int defaultId;
  final String title;
  final String searchHint;

  const ServiceConfig({required this.moduleId, required this.apiPath, required this.title, required this.searchHint, this.defaultZoneId = 1, this.defaultId = 1});
}

class ModuleRepository extends BaseRepository {
  ModuleRepository() : super(baseUrl: AppStrings.baseUrl);

  // Service configurations map - much cleaner than the previous approach
  static const Map<ServiceType, ServiceConfig> serviceConfigs = {
    ServiceType.food: ServiceConfig(moduleId: 3, apiPath: ModuleApiPath.getFastFoodStores, title: 'Food Delivery', searchHint: 'Search for restaurants...'),
    ServiceType.grocery: ServiceConfig(moduleId: 4, apiPath: ModuleApiPath.getGroceryStores, title: 'Grocery Delivery', searchHint: 'Search for grocery stores...'),
    ServiceType.delivery: ServiceConfig(moduleId: 5, apiPath: ModuleApiPath.getDeliveryServices, title: 'Delivery Services', searchHint: 'Search for delivery services...'),
    ServiceType.laundry: ServiceConfig(moduleId: 6, apiPath: ModuleApiPath.getLaundryServices, title: 'Laundry Services', searchHint: 'Search for laundry services...'),
    ServiceType.ticket: ServiceConfig(moduleId: 7, apiPath: ModuleApiPath.getTicketServices, title: 'Ticket Services', searchHint: 'Search for tickets...'),
    ServiceType.cleaning: ServiceConfig(moduleId: 8, apiPath: ModuleApiPath.getCleaningServices, title: 'Cleaning Services', searchHint: 'Search for cleaning services...'),
    ServiceType.seeMore: ServiceConfig(moduleId: 3, apiPath: ModuleApiPath.getFastFoodStores, title: 'More Services', searchHint: 'Search for more services...'),
  };

  // Get service configuration
  static ServiceConfig getServiceConfig(ServiceType serviceType) {
    return serviceConfigs[serviceType] ?? serviceConfigs[ServiceType.food]!;
  }

  // Generic method to get stores/services data
  Future<ApiResult> getServiceData(ServiceType serviceType, {int? zoneId, int? id}) async {
    final config = getServiceConfig(serviceType);
    return handleApiRequest(
      () => dioClient.get(
        config.apiPath,
        options: Options(headers: {'zoneId': (zoneId ?? config.defaultZoneId).toString(), 'moduleId': config.moduleId.toString(), 'id': (id ?? config.defaultId).toString()}),
      ),
    );
  }

  // Legacy methods for backward compatibility (can be removed later)
  Future<ApiResult> getFastFoodStores({required int zoneId, required int moduleId, required int id}) async {
    return getServiceData(ServiceType.food, zoneId: zoneId, id: id);
  }

  Future<ApiResult> getGroceryStores({required int zoneId, required int moduleId, required int id}) async {
    return getServiceData(ServiceType.grocery, zoneId: zoneId, id: id);
  }
}
