import 'package:dio/dio.dart';
import 'package:sixam_mart_user/app/constants/app_strings.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_repository.dart';

/// API endpoints for store-related operations
class StoreApiPath {
  static String storeInformation(String type, int storeId) => '/api/v1/stores/storeInformation/$type/$storeId';
  static String storeReviewInfo(String type, int storeId) => '/api/v1/stores/storeReviewInfo/$type/$storeId';
  static String storeGeneralInfo(String type, int storeId) => '/api/v1/stores/storeGeneralInfo/$type/$storeId';
  static const String homeData = '/api/v1/stores/homeData';
  static String getStoreDataByService(String service) => '/api/v1/stores/$service';
}

/// Query parameters for store filtering and pagination
class StoreQueryParameters {
  const StoreQueryParameters({this.delivery, this.minPrice, this.maxPrice, this.rating, this.under30, this.offers, this.categoryIds, this.limit, this.offset});

  final String? delivery;
  final int? minPrice;
  final int? maxPrice;
  final int? rating;
  final int? under30;
  final int? offers;
  final List<int>? categoryIds;
  final int? limit;
  final int? offset;

  /// Converts parameters to JSON format for API requests
  Map<String, dynamic> toJson() {
    return {'delivery': delivery, 'min_price': minPrice, 'max_price': maxPrice, 'rating': rating, 'under_30': under30, 'offers': offers, 'category_ids': categoryIds, 'limit': limit, 'offset': offset};
  }
}

/// Repository for store-related API operations
class StoreRepository extends BaseRepository {
  StoreRepository() : super(baseUrl: AppStrings.baseUrl);

  Future<ApiResult> getStoreData(String service, {int? zoneId, int? id, int? moduleId, StoreQueryParameters? queryParameters}) async {
    final headers = <String, dynamic>{'zoneId': (zoneId ?? 1).toString(), 'moduleId': (moduleId ?? 1).toString(), 'id': (id ?? 1).toString()};

    final queryParams = queryParameters?.toJson();

    return handleApiRequest(
      () => dioClient.get(
        StoreApiPath.getStoreDataByService(service),
        queryParameters: queryParams,
        options: Options(headers: headers),
      ),
    );
  }

  Future<ApiResult> getHomeData(int userId) async {
    final body = <String, dynamic>{'id': userId};
    return handleApiRequest(() => dioClient.get(StoreApiPath.homeData, queryParameters: body));
  }

  Future<ApiResult> getStoreReviewInfo(String serviceType, int storeId, {int? zoneId, int? id, int? moduleId, StoreQueryParameters? queryParameters}) async {
    final headers = <String, dynamic>{'zoneId': (zoneId ?? 1).toString(), 'moduleId': (moduleId ?? 1).toString(), 'id': (id ?? 1).toString()};

    final queryParams = queryParameters?.toJson();

    return handleApiRequest(
      () => dioClient.get(
        StoreApiPath.storeReviewInfo(serviceType, storeId),
        queryParameters: queryParams,
        options: Options(headers: headers),
      ),
    );
  }

  Future<ApiResult> getStoreGeneralInfo(String serviceType, int storeId, {int? zoneId, int? id, int? moduleId, StoreQueryParameters? queryParameters}) async {
    final headers = <String, dynamic>{'zoneId': (zoneId ?? 1).toString(), 'moduleId': (moduleId ?? 1).toString(), 'id': (id ?? 1).toString()};

    final queryParams = queryParameters?.toJson();

    return handleApiRequest(
      () => dioClient.get(
        StoreApiPath.storeGeneralInfo(serviceType, storeId),
        queryParameters: queryParams,
        options: Options(headers: headers),
      ),
    );
  }

  Future<ApiResult> getStoreInformation(String serviceType, int storeId, {int? zoneId, int? id, int? moduleId, StoreQueryParameters? queryParameters}) async {
    final headers = <String, dynamic>{'zoneId': (zoneId ?? 1).toString(), 'moduleId': (moduleId ?? 1).toString(), 'id': (id ?? 1).toString()};

    final queryParams = queryParameters?.toJson();

    return handleApiRequest(
      () => dioClient.get(
        StoreApiPath.storeInformation(serviceType, storeId),
        queryParameters: queryParams,
        options: Options(headers: headers),
      ),
    );
  }
}
