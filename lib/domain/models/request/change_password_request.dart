import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../base/base_request.dart';

part '../../../generated/domain/models/request/change_password_request.g.dart';

@JsonSerializable()
class ChangePasswordRequest extends BaseRequest {
  @JsonKey(name: "old_password")
  final String oldPassword;

  @JsonKey(name: "password")
  final String password;

  @JsonKey(name: "confirm_password")
  final String confirmPassword;

  ChangePasswordRequest({
    required this.oldPassword,
    required this.password,
    required this.confirmPassword,
  });

  factory ChangePasswordRequest.fromJson(Map<String, dynamic> json) => _$ChangePasswordRequestFromJson(json);

  @override
  Map<String, dynamic> toRawJson() => _$ChangePasswordRequestToJson(this);
}