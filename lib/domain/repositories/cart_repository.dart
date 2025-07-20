import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_repository.dart';
import 'package:sixam_mart_user/domain/models/request/cart_models.dart';

class CartApiPath {
  static const String getCartList = '/api/v1/customer/cart/list-by-stores';
  static const String addToCart = '/api/v1/customer/cart/add';
  static const String updateCart = '/api/v1/customer/cart/update';
  static const String removeFromCart = '/api/v1/customer/cart/remove';
  static const String clearCart = '/api/v1/customer/cart/clear-cart';
}

class CartRepository extends BaseRepository {
  Future<ApiResult> getCartList() async {
    return handleApiRequest(() => dioClient.get(CartApiPath.getCartList));
  }

  Future<ApiResult> addToCart(AddToCartRequest request) async {
    final Map<String, dynamic> requestData = request.toJson();
    return handleApiRequest(() => dioClient.post(CartApiPath.addToCart, data: requestData));
  }

  Future<ApiResult> updateCart(UpdateCartRequest request) async {
    final Map<String, dynamic> requestData = request.toJson();
    return handleApiRequest(() => dioClient.post(CartApiPath.updateCart, data: requestData));
  }

  Future<ApiResult> removeFromCart(RemoveFromCartRequest request) async {
    final Map<String, dynamic> requestData = request.toJson();
    return handleApiRequest(() => dioClient.post(CartApiPath.removeFromCart, data: requestData));
  }

  Future<ApiResult> clearCart() async {
    return handleApiRequest(() => dioClient.post(CartApiPath.clearCart));
  }
}
