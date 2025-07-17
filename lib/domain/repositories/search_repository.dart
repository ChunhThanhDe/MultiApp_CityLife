import 'package:sixam_mart_user/app/constants/app_strings.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_repository.dart';

class SearchApiPath {
  static const String searchStores = '/api/v1/stores/searching';
}

class SearchRepository extends BaseRepository {
  SearchRepository() : super(baseUrl: AppStrings.baseUrl);

  // Search stores and products
  Future<ApiResult> searchStores({String? query, int? id, int limit = 10, int offset = 0}) async {
    final queryParameters = <String, dynamic>{
      'id': id ?? 3, // Default to module_id 3
      'limit': limit,
      'offset': offset,
    };

    if (query != null && query.isNotEmpty) {
      queryParameters['q'] = query;
    }

    return handleApiRequest(() => dioClient.get(SearchApiPath.searchStores, queryParameters: queryParameters));
  }

  // Get initial data (recent, top searches) - no query parameter
  Future<ApiResult> getInitialSearchData({int? id}) async {
    return searchStores(id: id);
  }
}
