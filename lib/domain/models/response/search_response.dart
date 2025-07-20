// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/domain/models/response/search_response.freezed.dart';
part '../../../generated/domain/models/response/search_response.g.dart';

@freezed
abstract class SearchResponse with _$SearchResponse {
  const factory SearchResponse({
    @JsonKey(name: 'top_searches') List<String>? topSearches,
    @JsonKey(name: 'recent_stores') List<RecentStore>? recentStores,
    @JsonKey(name: 'items_by_store') List<StoreItemGroup>? itemsByStore,
  }) = _SearchResponse;

  factory SearchResponse.fromJson(Map<String, dynamic> json) => _$SearchResponseFromJson(json);
}

@freezed
abstract class RecentStore with _$RecentStore {
  const factory RecentStore({
    @Default(0) int id,
    @Default('') String name,
    @JsonKey(name: 'logo_url') @Default('') String logoUrl,
    @JsonKey(name: 'delivery_time') @Default('') String deliveryTime,
    @JsonKey(name: 'delivery_fee') @Default(0.0) double deliveryFee,
  }) = _RecentStore;

  factory RecentStore.fromJson(Map<String, dynamic> json) => _$RecentStoreFromJson(json);
}

@freezed
abstract class StoreItemGroup with _$StoreItemGroup {
  const factory StoreItemGroup({@JsonKey(name: 'store_id') @Default(0) int storeId, @JsonKey(name: 'store_name') @Default('') String storeName, @Default([]) List<Item> items}) = _StoreItemGroup;

  factory StoreItemGroup.fromJson(Map<String, dynamic> json) => _$StoreItemGroupFromJson(json);
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
