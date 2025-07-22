import 'package:dio/dio.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_repository.dart';
import 'package:sixam_mart_user/domain/enums/service_type.dart';

class ServiceApiPath {
  static const String getFastFoodStores = '/api/v1/stores/fast_food';
  static const String getGroceryStores = '/api/v1/stores/grocery';
  static const String getDeliveryServices = '/api/v1/services/fast_food';
  static const String getLaundryServices = '/api/v1/services/fast_food';
  static const String getTicketServices = '/api/v1/services/fast_food';
  static const String getCleaningServices = '/api/v1/services/fast_food';
}

// Clean ServiceConfig class instead of messy Map
class ServiceConfig {
  final int moduleId;
  final String apiPath;
  final int defaultZoneId;
  final int defaultId;

  const ServiceConfig({required this.moduleId, required this.apiPath, this.defaultZoneId = 1, this.defaultId = 1});
}

class ServiceRepository extends BaseRepository {
  // Service configurations map - much cleaner than the previous approach
  static const Map<ServiceType, ServiceConfig> serviceConfigs = {
    ServiceType.food: ServiceConfig(moduleId: 3, apiPath: ServiceApiPath.getFastFoodStores),
    ServiceType.grocery: ServiceConfig(moduleId: 4, apiPath: ServiceApiPath.getGroceryStores),
    ServiceType.delivery: ServiceConfig(moduleId: 3, apiPath: ServiceApiPath.getDeliveryServices),
    ServiceType.laundry: ServiceConfig(moduleId: 3, apiPath: ServiceApiPath.getLaundryServices),
    ServiceType.ticket: ServiceConfig(moduleId: 3, apiPath: ServiceApiPath.getTicketServices),
    ServiceType.cleaning: ServiceConfig(moduleId: 3, apiPath: ServiceApiPath.getCleaningServices),
    ServiceType.seeMore: ServiceConfig(moduleId: 3, apiPath: ServiceApiPath.getFastFoodStores),
  };

  // Get service configuration
  static ServiceConfig getServiceConfig(ServiceType serviceType) {
    return serviceConfigs[serviceType] ?? serviceConfigs[ServiceType.food]!;
  }

  // Generic method to get stores/services data
  Future<ApiResult> getServiceData(ServiceType serviceType, {int? zoneId, int? id}) async {
    final config = getServiceConfig(serviceType);
    final headers = <String, dynamic>{};
    headers['zoneId'] = (zoneId ?? config.defaultZoneId).toString();
    headers['moduleId'] = config.moduleId.toString();
    headers['id'] = (id ?? config.defaultId).toString();
    return handleApiRequest(() => dioClient.get(config.apiPath, options: Options(headers: headers)));
  }
}
