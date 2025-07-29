import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../base/base_request.dart';

part '../../../generated/domain/models/request/update_profile_request.g.dart';

@JsonSerializable()
class UpdateProfileRequest extends BaseRequest {
  @JsonKey(name: "name")
  final String name;

  @JsonKey(name: "email")
  final String email;

  @JsonKey(name: "phone")
  final String phone;

  @JsonKey(name: "birthday")
  final String? birthday;

  @JsonKey(name: "latitude")
  final String? latitude;

  @JsonKey(name: "longitude")
  final String? longitude;

  UpdateProfileRequest({
    required this.name,
    required this.email,
    required this.phone,
    this.birthday,
    this.latitude,
    this.longitude,
  });

  factory UpdateProfileRequest.fromJson(Map<String, dynamic> json) => _$UpdateProfileRequestFromJson(json);

  @override
  Map<String, dynamic> toRawJson() => _$UpdateProfileRequestToJson(this);
}