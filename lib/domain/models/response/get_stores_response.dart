// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/domain/models/response/get_stores_response.freezed.dart';
part '../../../generated/domain/models/response/get_stores_response.g.dart';

@freezed
abstract class GetStoresResponse with _$GetStoresResponse {
  const factory GetStoresResponse({
    @JsonKey(name: 'user_location') required UserLocation userLocation,
    required List<Category> categories,
    required List<Store> recent,
    @JsonKey(name: 'shop_near_you') required List<Store> shopNearYou,
    @JsonKey(name: 'top_offer') required List<Product> topOffer,
    @JsonKey(name: 'today_offer') required List<Store> todayOffer,
    @JsonKey(name: 'popular_near_you') required List<Product> popularNearYou,
    @JsonKey(name: 'all_store') required List<Store> allStore,
  }) = _GetStoresResponse;

  factory GetStoresResponse.fromJson(Map<String, dynamic> json) => _$GetStoresResponseFromJson(json);
}

@freezed
abstract class UserLocation with _$UserLocation {
  const factory UserLocation({required int id, required double latitude, required double longitude}) = _UserLocation;

  factory UserLocation.fromJson(Map<String, dynamic> json) => _$UserLocationFromJson(json);
}

@freezed
abstract class Category with _$Category {
  const factory Category({required int id, required String name, required String image}) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}

@freezed
abstract class Store with _$Store {
  const factory Store({
    required int id,
    required String name,
    required String logo,
    @JsonKey(name: 'cover_photo') required String coverPhoto,
    required double rating,
    @JsonKey(name: 'delivery_time') required String deliveryTime,
    @JsonKey(name: 'distance_km') double? distanceKm,
    int? status,
  }) = _Store;

  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);
}

@freezed
abstract class Product with _$Product {
  const factory Product({required int id, String? name, required String image, @JsonKey(name: 'distance_km') double? distanceKm}) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}
