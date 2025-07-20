import 'package:sixam_mart_user/app/constants/app_strings.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_repository.dart';

class SearchApiPath {
  static const String searchStores = '/api/v1/stores/searching';
}

class SearchRepository extends BaseRepository {
  SearchRepository() : super(baseUrl: AppStrings.baseUrl);

  // Search stores and products with optional query
  Future<ApiResult> searchStores({String? query}) async {
    final queryParameters = <String, dynamic>{
      'id': 3, // Hardcoded as per requirements
      'module_id': 3, // Hardcoded as per requirements
    };

    if (query != null && query.isNotEmpty) {
      queryParameters['q'] = query;
    }

    return handleApiRequest(() => dioClient.get(SearchApiPath.searchStores, queryParameters: queryParameters));
  }
}
