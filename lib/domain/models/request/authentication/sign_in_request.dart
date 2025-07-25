import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../base/base_request.dart';

part '../../../../generated/domain/models/request/authentication/sign_in_request.g.dart';

@JsonEnum(valueField: 'value')
enum SignInType {
  manual('manual'),
  google('google'),
  facebook('facebook');

  final String value;

  const SignInType(this.value);
}

@JsonSerializable()
class SignInRequest extends BaseRequest {
  @JsonKey(name: "login_type")
  final SignInType loginType;

  @JsonKey(name: "email_or_phone")
  final String emailOrPhone;

  @JsonKey(name: "field_type")
  final String fieldType;

  @JsonKey(name: "password")
  final String password;

  SignInRequest({required this.loginType, required this.emailOrPhone, required this.fieldType, required this.password});

  factory SignInRequest.fromJson(Map<String, dynamic> json) => _$SignInRequestFromJson(json);

  @override
  Map<String, dynamic> toRawJson() => _$SignInRequestToJson(this);
}
