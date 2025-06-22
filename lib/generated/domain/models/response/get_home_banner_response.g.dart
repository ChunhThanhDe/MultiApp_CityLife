// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/response/get_home_banner_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetHomeBannerResponse _$GetHomeBannerResponseFromJson(
  Map<String, dynamic> json,
) => GetHomeBannerResponse(
  user: json['user'] == null
      ? null
      : UserInfo.fromJson(json['user'] as Map<String, dynamic>),
  sections: (json['sections'] as List<dynamic>)
      .map((e) => BannerSection.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetHomeBannerResponseToJson(
  GetHomeBannerResponse instance,
) => <String, dynamic>{'user': instance.user, 'sections': instance.sections};

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) =>
    UserInfo(fName: json['f_name'] as String?, image: json['image'] as String?);

Map<String, dynamic> _$UserInfoToJson(UserInfo instance) => <String, dynamic>{
  'f_name': instance.fName,
  'image': instance.image,
};

BannerSection _$BannerSectionFromJson(Map<String, dynamic> json) =>
    BannerSection(
      id: json['id'] as String,
      title: json['title'] as String,
      subsections: (json['subsections'] as List<dynamic>)
          .map((e) => BannerSubsection.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BannerSectionToJson(BannerSection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subsections': instance.subsections,
    };

BannerSubsection _$BannerSubsectionFromJson(Map<String, dynamic> json) =>
    BannerSubsection(
      id: json['id'] as String,
      title: json['title'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => StoreItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BannerSubsectionToJson(BannerSubsection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'items': instance.items,
    };

StoreItem _$StoreItemFromJson(Map<String, dynamic> json) => StoreItem(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  logo: json['logo'] as String?,
  coverImage: json['cover_image'] as String?,
  deliveryFee: (json['delivery_fee'] as num?)?.toDouble(),
);

Map<String, dynamic> _$StoreItemToJson(StoreItem instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'logo': instance.logo,
  'cover_image': instance.coverImage,
  'delivery_fee': instance.deliveryFee,
};
