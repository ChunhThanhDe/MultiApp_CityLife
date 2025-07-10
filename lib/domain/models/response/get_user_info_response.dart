// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/domain/models/response/get_user_info_response.freezed.dart';
part '../../../generated/domain/models/response/get_user_info_response.g.dart';

@freezed
abstract class UserInfo with _$UserInfo {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory UserInfo({
    @Default(0) int id,
    @Default('') String fName,
    @Default('') String lName,
    @Default('') String phone,
    @Default('') String email,
    @Default('') String latitude,
    @Default('') String longitude,
    @Default('') String image,
    @Default(0) int isPhoneVerified,
    @Default('') String emailVerifiedAt,
    @Default('') String createdAt,
    @Default('') String updatedAt,
    @Default('') String cmFirebaseToken,
    @Default(0) int status,
    @Default(0) int orderCount,
    @Default('') String loginMedium,
    @Default('') String socialId,
    @Default(0) int zoneId,
    @Default(0) int walletBalance,
    @Default(0) int loyaltyPoint,
    @Default('') String refCode,
    @Default('') String currentLanguageKey,
    @Default('') String refBy,
    @Default('') String tempToken,
    @Default([]) List<dynamic> moduleIds,
    @Default(0) int isEmailVerified,
    @Default(0) int isFromPos,
    @Default('') String birthday,
    @Default('') String appearance,
    @Default('') String userinfo,
    @Default(0) int memberSinceDays,
    @Default([]) List<dynamic> selectedModulesForInterest,
    @Default(false) bool isValidForDiscount,
    @Default(0) int discountAmount,
    @Default('') String discountAmountType,
    @Default('') String validity,
    @Default('') String imageFullUrl,
    @Default([]) List<dynamic> storage,
  }) = _UserInfo;

  factory UserInfo.fromJson(Map<String, dynamic> json) => _$UserInfoFromJson(json);
}
