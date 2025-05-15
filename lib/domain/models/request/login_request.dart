import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/domain/models/request/login_request.g.dart';

@JsonSerializable()
class LoginRequest {
  @JsonKey(name: "email")
  final String? email;
  @JsonKey(name: "password")
  final String? password;

  LoginRequest({
    this.email,
    this.password,
  });

  factory LoginRequest.fromJson(Map<String, dynamic> json) => _$LoginRequestFromJson(json);

  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);
}
