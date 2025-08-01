import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:sixam_mart_user/base/base_request.dart';

part '../../../../generated/domain/models/request/authentication/sign_up_request.g.dart';

@JsonSerializable()
class SignUpRequest extends BaseRequest {

  SignUpRequest({required this.name, required this.password, this.email, this.phone, this.birthday});

  factory SignUpRequest.fromJson(Map<String, dynamic> json) => _$SignUpRequestFromJson(json);
  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'email')
  final String? email;

  @JsonKey(name: 'phone')
  final String? phone;

  @JsonKey(name: 'password')
  final String password;

  @JsonKey(name: 'birthday')
  final String? birthday;

  @override
  Map<String, dynamic> toRawJson() => _$SignUpRequestToJson(this);
}
