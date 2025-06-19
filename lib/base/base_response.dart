import 'package:json_annotation/json_annotation.dart';

part '../generated/base/base_response.g.dart';

@JsonSerializable()
class BaseResponse {
  final bool success;
  final dynamic data;

  BaseResponse({required this.success, required this.data});

  factory BaseResponse.fromJson(Map<String, dynamic> json) => _$BaseResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BaseResponseToJson(this);
}
