import 'package:dio/dio.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_repository.dart';
import 'package:sixam_mart_user/domain/models/request/add_wishlist_request.dart';
import 'package:sixam_mart_user/domain/models/request/remove_wishlist_request.dart';

class WishlistApiPath {
  static const String getWishlist = '/api/v1/customer/wish-list';
  static const String addWishlist = '/api/v1/customer/wish-list/add';
  static const String removeWishlist = '/api/v1/customer/wish-list/remove';
}

class WishlistRepository extends BaseRepository {
  Future<ApiResult> getWishlist() async {
    final headers = {
      'zoneId': [1],
    };
    return handleApiRequest(() => dioClient.get(WishlistApiPath.getWishlist, options: Options(headers: headers)));
  }

  Future<ApiResult> addWishlist(AddWishlistRequest request) async {
    final headers = {
      'zoneId': [1],
    };
    return handleApiRequest(
      () => dioClient.post(
        WishlistApiPath.addWishlist,
        data: request.toJson(),
        options: Options(headers: headers),
      ),
    );
  }

  Future<ApiResult> removeWishlist(RemoveWishlistRequest request) async {
    final headers = {
      'zoneId': [1],
    };

    return handleApiRequest(
      () => dioClient.delete(
        WishlistApiPath.removeWishlist,
        data: request.toJson(),
        options: Options(headers: headers),
      ),
    );
  }
}
