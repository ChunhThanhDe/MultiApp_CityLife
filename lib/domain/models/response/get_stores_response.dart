// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/domain/models/response/get_stores_response.freezed.dart';
part '../../../generated/domain/models/response/get_stores_response.g.dart';

@freezed
abstract class GetStoresResponse with _$GetStoresResponse {
  const factory GetStoresResponse({List<Category>? categories, Map<String, dynamic>? data}) = _GetStoresResponse;

  factory GetStoresResponse.fromJson(Map<String, dynamic> json) => _$GetStoresResponseFromJson(json);
}

@freezed
abstract class Category with _$Category {
  const factory Category({required int id, required String name, required String image}) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}

@freezed
abstract class BannerEntity with _$BannerEntity {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory BannerEntity({
    required int id,
    String? name,
    String? logo,
    String? coverPhoto,
    double? rating,
    int? reviewCount,
    String? deliveryTime,
    double? distanceKm,
    double? deliveryFee,
    @Default(1) int status,
    String? image,
  }) = _BannerEntity;

  factory BannerEntity.fromJson(Map<String, dynamic> json) => _$BannerEntityFromJson(json);
}
