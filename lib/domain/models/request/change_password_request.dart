import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:sixam_mart_user/base/base_request.dart';

part '../../../generated/domain/models/request/change_password_request.g.dart';

@JsonSerializable()
class ChangePasswordRequest extends BaseRequest {

  ChangePasswordRequest({
    required this.oldPassword,
    required this.password,
    required this.confirmPassword,
  });

  factory ChangePasswordRequest.fromJson(Map<String, dynamic> json) => _$ChangePasswordRequestFromJson(json);
  @JsonKey(name: 'old_password')
  final String oldPassword;

  @JsonKey(name: 'password')
  final String password;

  @JsonKey(name: 'confirm_password')
  final String confirmPassword;

  @override
  Map<String, dynamic> toRawJson() => _$ChangePasswordRequestToJson(this);
}