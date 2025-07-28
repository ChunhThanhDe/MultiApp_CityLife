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
    @JsonKey(name: 'delivery_fee') double? deliveryFee,
    int? status,
  }) = _Store;

  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);
}

@freezed
abstract class Product with _$Product {
  const factory Product({required int id, String? name, required String image, @JsonKey(name: 'distance_km') double? distanceKm}) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}

// Extension to dynamically extract all List fields from GetStoresResponse
extension GetStoresResponseDynamic on GetStoresResponse {
  Map<String, List<dynamic>> toListFieldsMap() {
    final listFields = <String, List<dynamic>>{};

    // Convert object to JSON to dynamically detect all fields
    final json = toJson();

    // Iterate through all JSON fields and extract List types
    for (final entry in json.entries) {
      final fieldName = entry.key;
      final fieldValue = entry.value;

      // Skip non-list fields (like userLocation)
      if (fieldValue is List && fieldValue.isNotEmpty) {
        // Convert field name from snake_case to camelCase for consistency
        final camelCaseFieldName = _toCamelCase(fieldName);
        listFields[camelCaseFieldName] = List<dynamic>.from(fieldValue);
      }
    }

    return listFields;
  }

  // Convert snake_case to camelCase
  String _toCamelCase(String snakeCase) {
    final parts = snakeCase.split('_');
    if (parts.length == 1) return snakeCase;

    return parts.first + parts.skip(1).map((part) => part[0].toUpperCase() + part.substring(1)).join();
  }
}
