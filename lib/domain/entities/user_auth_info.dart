import 'package:freezed_annotation/freezed_annotation.dart';

part '../../generated/domain/entities/user_auth_info.freezed.dart';
part '../../generated/domain/entities/user_auth_info.g.dart';

@freezed
sealed class UserAuthInfo with _$UserAuthInfo {
  const factory UserAuthInfo({
    @Default('') String token,
    @Default('') String refreshToken,
    @Default('') String userId,
    @Default(false) bool isPhoneVerified,
    @Default(false) bool isEmailVerified,
    @Default(false) bool isPersonalInfo,
    @Default(false) bool isExistUser,
    @Default('') String loginType,
    @Default('') String email,
  }) = _UserAuthInfo;

  factory UserAuthInfo.fromJson(Map<String, dynamic> json) => _$UserAuthInfoFromJson(json);
}
