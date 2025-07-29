import 'package:sixam_mart_user/app/constants/app_strings.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_repository.dart';

class StoreApiPath {
  static const String storeFood = '/api/v1/stores/storeInformationFood/';
  static const String storeGrocery = '/api/v1/stores/StoreProductGrocery';
  static const String storeGeneral = '/api/v1/stores/StoreProductGeneral';
  static const String storeReviews = '/api/v1/stores/StoreReview';
}

enum StoreType { food, grocery }

class StoreRepository extends BaseRepository {
  StoreRepository() : super(baseUrl: AppStrings.baseUrl);

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
        apiPath = '${StoreApiPath.storeFood}$storeId';
        params.addAll({'popular_limit': popularLimit, 'category_item_limit': categoryItemLimit, 'category_item_offset': categoryItemOffset});
        break;

      case StoreType.grocery:
        apiPath = StoreApiPath.storeGrocery;
        params.addAll({'store_id': storeId, 'category_limit': categoryLimit, 'category_offset': categoryOffset, 'category_item_limit': categoryItemLimit, 'category_item_offset': categoryItemOffset});
        break;
    }

    return handleApiRequest(() => dioClient.get(apiPath, queryParameters: params));
  }
}
