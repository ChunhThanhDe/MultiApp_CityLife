import 'package:json_annotation/json_annotation.dart';

part '../../../generated/domain/models/response/sign_up_response.g.dart';

@JsonSerializable()
class SignUpResponse {
  final String? token;

  @JsonKey(name: 'is_phone_verified')
  final int? isPhoneVerified;

  @JsonKey(name: 'is_email_verified')
  final int? isEmailVerified;

  @JsonKey(name: 'is_personal_info')
  final int? isPersonalInfo;

  @JsonKey(name: 'is_exist_user')
  final dynamic isExistUser;

  @JsonKey(name: 'login_type')
  final String? loginType;

  final String? email;

  SignUpResponse({
    this.token,
    this.isPhoneVerified,
    this.isEmailVerified,
    this.isPersonalInfo,
    this.isExistUser,
    this.loginType,
    this.email,
  });

  factory SignUpResponse.fromJson(Map<String, dynamic> json) => _$SignUpResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SignUpResponseToJson(this);
}
