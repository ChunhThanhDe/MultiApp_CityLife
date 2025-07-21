import 'package:sixam_mart_user/app/constants/app_strings.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_repository.dart';

class ProductApiPath {
  static const String productDetail = '/api/v1/stores/StoreProductDetail/';
}

class ProductRepository extends BaseRepository {
  ProductRepository() : super(baseUrl: AppStrings.baseUrl);

  Future<ApiResult> getProductDetail({
    required int productId,
  }) async {
    final apiPath = '${ProductApiPath.productDetail}$productId';
    return handleApiRequest(() => dioClient.get(apiPath));
  }
}
