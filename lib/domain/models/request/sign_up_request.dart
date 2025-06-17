import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../base/base_request.dart';

part '../../../generated/domain/models/request/sign_up_request.g.dart';

@JsonSerializable()
class SignUpRequest extends BaseRequest {
  @JsonKey(name: "name")
  final String name;

  @JsonKey(name: "email")
  final String? email;

  @JsonKey(name: "phone")
  final String? phone;

  @JsonKey(name: "password")
  final String password;

  @JsonKey(name: "birthday")
  final String? birthday;

  SignUpRequest({required this.name, this.email, this.phone, required this.password, this.birthday});

  factory SignUpRequest.fromJson(Map<String, dynamic> json) => _$SignUpRequestFromJson(json);

  @override
  Map<String, dynamic> toRawJson() => _$SignUpRequestToJson(this);
}
