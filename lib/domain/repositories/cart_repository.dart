import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_repository.dart';
import 'package:sixam_mart_user/domain/models/response/cart/cart_models.dart';

class CartApiPath {
  static const String getCartList = '/api/v1/customer/cart/list-by-stores';
  static const String addToCart = '/api/v1/customer/cart/add';
  static const String updateCart = '/api/v1/customer/cart/update';
  static const String removeFromCart = '/api/v1/customer/cart/remove-item';
  static const String clearCart = '/api/v1/customer/cart/remove';
}

class CartRepository extends BaseRepository {
  Future<ApiResult> getCartList() async {
    return handleApiRequest(() => dioClient.get(CartApiPath.getCartList));
  }

  Future<ApiResult> addToCart(AddToCartRequest request) async {
    final Map<String, dynamic> requestData = request.toJson();
    // Remove add_on_ids and add_on_qtys if empty or null
    if (requestData['add_on_ids'] == null || (requestData['add_on_ids'] is List && (requestData['add_on_ids'] as List).isEmpty)) {
      requestData.remove('add_on_ids');
      requestData.remove('add_on_qtys');
    }
    final headers = {'moduleId': '1'};
    return handleApiRequest(
      () => dioClient.post(
        CartApiPath.addToCart,
        data: jsonEncode(requestData),
        options: Options(headers: headers),
      ),
    );
  }

  Future<ApiResult> updateCart(UpdateCartRequest request) async {
    final Map<String, dynamic> requestData = request.toJson();
    return handleApiRequest(() => dioClient.post(CartApiPath.updateCart, data: requestData));
  }

  Future<ApiResult> removeFromCart(RemoveFromCartRequest request) async {
    final Map<String, dynamic> requestData = request.toJson();
    return handleApiRequest(() => dioClient.delete(CartApiPath.removeFromCart, data: requestData));
  }

  Future<ApiResult> clearCart() async {
    return handleApiRequest(() => dioClient.delete(CartApiPath.clearCart));
  }
}
