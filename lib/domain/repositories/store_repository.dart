import 'package:dio/dio.dart';
import 'package:sixam_mart_user/app/constants/app_strings.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_repository.dart';

class StoreApiPath {
  static const String storeFood = '/api/v1/stores/storeInformationFood/';
  static const String storeGrocery = '/api/v1/stores/StoreProductGrocery';
  static const String storeGeneral = '/api/v1/stores/StoreProductGeneral';
  static const String storeReviews = '/api/v1/stores/StoreReview';
  static String getStoreDataByService(String service) => '/api/v1/stores/$service';
  static const String getStoreGeneralData = '/api/v1/stores/getGeneralInfo';
}

enum StoreType { food, grocery, general, reviews }

class StoreRepository extends BaseRepository {
  StoreRepository() : super(baseUrl: AppStrings.baseUrl);

  Future<ApiResult> getStoreData(String service, {int? zoneId, int? id, int? moduleId}) async {
    final headers = <String, dynamic>{'zoneId': (zoneId ?? 1).toString(), 'moduleId': (moduleId ?? 1).toString(), 'id': (id ?? 1).toString()};
    return handleApiRequest(() => dioClient.get(StoreApiPath.getStoreDataByService(service), options: Options(headers: headers)));
  }

  Future<ApiResult> getStoreGeneralData(int userId) async {
    final body = <String, dynamic>{'id': userId};
    return handleApiRequest(() => dioClient.post(StoreApiPath.getStoreGeneralData, data: body));
  }

  Future<ApiResult> getStoreDetail({
    required int storeId,
    required StoreType storeType,
    int popularLimit = 5,
    int categoryLimit = 20,
    int categoryOffset = 0,
    int categoryItemLimit = 10,
    int categoryItemOffset = 0,
    int? menuCategoryId,
    int menuLimit = 20,
    int menuOffset = 0,
    int reviewsLimit = 10,
    int reviewsOffset = 0,
  }) async {
    late String apiPath;
    final Map<String, dynamic> params = {};

    switch (storeType) {
      case StoreType.food:
        // Sử dụng storeId làm path param
        apiPath = '${StoreApiPath.storeFood}$storeId';

        // Nếu API food có param limit thì giữ lại, không có thì bỏ đi
        params.addAll({'popular_limit': popularLimit, 'category_item_limit': categoryItemLimit, 'category_item_offset': categoryItemOffset});
        break;

      case StoreType.grocery:
        apiPath = StoreApiPath.storeGrocery;
        params.addAll({'store_id': storeId, 'category_limit': categoryLimit, 'category_offset': categoryOffset, 'category_item_limit': categoryItemLimit, 'category_item_offset': categoryItemOffset});
        break;

      case StoreType.general:
        apiPath = StoreApiPath.storeGeneral;
        params.addAll({'store_id': storeId, 'menu_limit': menuLimit, 'menu_offset': menuOffset});
        if (menuCategoryId != null) {
          params['menu_category_id'] = menuCategoryId;
        }
        break;

      case StoreType.reviews:
        apiPath = StoreApiPath.storeReviews;
        params.addAll({'store_id': storeId, 'reviews_limit': reviewsLimit, 'reviews_offset': reviewsOffset});
        break;
    }

    return handleApiRequest(() => dioClient.get(apiPath, queryParameters: params));
  }
}
