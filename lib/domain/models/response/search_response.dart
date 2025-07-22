// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/domain/models/response/search_response.freezed.dart';
part '../../../generated/domain/models/response/search_response.g.dart';

@freezed
abstract class SearchResponse with _$SearchResponse {
  const factory SearchResponse({
    @JsonKey(name: 'top_searches') List<String>? topSearches,
    @JsonKey(name: 'recent_searches') List<String>? recentSearches,
    @JsonKey(name: 'top_categories') List<TopCategories>? topCategories,
    @JsonKey(name: 'items_by_store') List<ItemByStore>? itemsByStore,
    @JsonKey(name: 'recent_stores') List<RecentStores>? recentStores,
  }) = _SearchResponse;

  factory SearchResponse.fromJson(Map<String, dynamic> json) => _$SearchResponseFromJson(json);
}

@freezed
abstract class RecentStores with _$RecentStores {
  const factory RecentStores({
    @JsonKey(name: 'id') @Default(0) int id,
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'logo_url') @Default('') String logo,
    @JsonKey(name: 'cover_photo_url') @Default('') String coverPhoto,
    @JsonKey(name: 'delivery_fee') @Default(0.0) double deliveryFee,
    @JsonKey(name: 'rating') @Default(0.0) double rating,
    @JsonKey(name: 'delivery_time') @Default('') String deliveryTime,
  }) = _RecentStores;

  factory RecentStores.fromJson(Map<String, dynamic> json) => _$RecentStoresFromJson(json);
}

@freezed
abstract class TopCategories with _$TopCategories {
  const factory TopCategories({
    @JsonKey(name: 'id') @Default(0) int id,
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'image_url') @Default('') String imageUrl,
    @JsonKey(name: 'items_count') @Default(0) int itemsCount,
  }) = _TopCategories;

  factory TopCategories.fromJson(Map<String, dynamic> json) => _$TopCategoriesFromJson(json);
}

@freezed
abstract class ItemByStore with _$ItemByStore {
  const factory ItemByStore({@JsonKey(name: 'store_id') @Default(0) int storeId, @JsonKey(name: 'store_name') @Default('') String storeName, @Default([]) List<Item> items}) = _ItemByStore;

  factory ItemByStore.fromJson(Map<String, dynamic> json) => _$ItemByStoreFromJson(json);
}

@freezed
abstract class Item with _$Item {
  const factory Item({
    @Default(0) int id,
    @Default('') String name,
    @JsonKey(name: 'image_url') @Default('') String imageUrl,
    @Default(0.0) double price,
    @Default(0.0) double discount,
    @JsonKey(name: 'final_price') @Default(0.0) double finalPrice,
    @JsonKey(name: 'avg_rating') @Default(0.0) double avgRating,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}
