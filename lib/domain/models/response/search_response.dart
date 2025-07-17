// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/domain/models/response/search_response.freezed.dart';
part '../../../generated/domain/models/response/search_response.g.dart';

@freezed
abstract class SearchResponse with _$SearchResponse {
  const factory SearchResponse({
    SearchItems? items,
    @JsonKey(name: 'top_searches') List<String>? topSearches,
    @JsonKey(name: 'recent_searches') List<String>? recentSearches,
    @JsonKey(name: 'recent_stores') List<RecentStore>? recentStores,
  }) = _SearchResponse;

  factory SearchResponse.fromJson(Map<String, dynamic> json) => _$SearchResponseFromJson(json);
}

@freezed
abstract class SearchItems with _$SearchItems {
  const factory SearchItems({@Default(0) int total, @Default(0) int limit, @Default(0) int offset, @Default([]) List<SearchItem> data}) = _SearchItems;

  factory SearchItems.fromJson(Map<String, dynamic> json) => _$SearchItemsFromJson(json);
}

@freezed
abstract class SearchItem with _$SearchItem {
  const factory SearchItem({
    @Default(0) int id,
    @Default('') String name,
    @JsonKey(name: 'image_url') @Default('') String imageUrl,
    @Default(0.0) double price,
    @Default(0.0) double discount,
    @JsonKey(name: 'final_price') @Default(0.0) double finalPrice,
    @JsonKey(name: 'avg_rating') @Default(0.0) double avgRating,
    @JsonKey(name: 'store_id') @Default(0) int storeId,
    @JsonKey(name: 'module_id') @Default(0) int moduleId,
  }) = _SearchItem;

  factory SearchItem.fromJson(Map<String, dynamic> json) => _$SearchItemFromJson(json);
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
