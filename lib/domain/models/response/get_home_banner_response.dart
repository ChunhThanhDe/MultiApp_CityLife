import 'package:json_annotation/json_annotation.dart';

part '../../../generated/domain/models/response/get_home_banner_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetHomeBannerResponse {
  final UserInfo? user;
  final List<BannerSection> sections;

  GetHomeBannerResponse({this.user, required this.sections});

  factory GetHomeBannerResponse.fromJson(Map<String, dynamic> json) => _$GetHomeBannerResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetHomeBannerResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class UserInfo {
  final String? fName;
  final String? image;

  UserInfo({this.fName, this.image});

  factory UserInfo.fromJson(Map<String, dynamic> json) => _$UserInfoFromJson(json);

  Map<String, dynamic> toJson() => _$UserInfoToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class BannerSection {
  final String id;
  final String title;
  final List<BannerSubsection> subsections;

  BannerSection({required this.id, required this.title, required this.subsections});

  factory BannerSection.fromJson(Map<String, dynamic> json) => _$BannerSectionFromJson(json);

  Map<String, dynamic> toJson() => _$BannerSectionToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class BannerSubsection {
  final String id;
  final String title;
  final List<StoreItem> items;

  BannerSubsection({required this.id, required this.title, required this.items});

  factory BannerSubsection.fromJson(Map<String, dynamic> json) => _$BannerSubsectionFromJson(json);

  Map<String, dynamic> toJson() => _$BannerSubsectionToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class StoreItem {
  final int id;
  final String name;
  final String? logo;
  final String? coverImage;
  final double? deliveryFee;

  StoreItem({required this.id, required this.name, this.logo, this.coverImage, this.deliveryFee});

  factory StoreItem.fromJson(Map<String, dynamic> json) => _$StoreItemFromJson(json);

  Map<String, dynamic> toJson() => _$StoreItemToJson(this);
}
