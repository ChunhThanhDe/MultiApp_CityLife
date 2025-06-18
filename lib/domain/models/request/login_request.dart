import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../base/base_request.dart';

part '../../../generated/domain/models/request/login_request.g.dart';

@JsonEnum(valueField: 'value')
enum LoginType {
  manual('manual'),
  google('google'),
  facebook('facebook');

  final String value;

  const LoginType(this.value);
}

@JsonSerializable()
class LoginRequest extends BaseRequest {
  @JsonKey(name: "login_type")
  final LoginType loginType;

  @JsonKey(name: "email_or_phone")
  final String emailOrPhone;

  @JsonKey(name: "field_type")
  final String fieldType;

  @JsonKey(name: "password")
  final String password;

  LoginRequest({required this.loginType, required this.emailOrPhone, required this.fieldType, required this.password});

  factory LoginRequest.fromJson(Map<String, dynamic> json) => _$LoginRequestFromJson(json);

  @override
  Map<String, dynamic> toRawJson() => _$LoginRequestToJson(this);
}
