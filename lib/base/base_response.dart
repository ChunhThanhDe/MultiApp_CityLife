import 'package:freezed_annotation/freezed_annotation.dart';

part '../generated/base/base_response.g.dart';

typedef Decoder<T> = T Function(dynamic data);

@JsonSerializable()
class BaseResponse {
  dynamic code;
  String? txtId;
  String? re;
  String? message;
  dynamic data;

  BaseResponse({
    this.code,
    this.txtId,
    this.data,
    this.re,
    this.message,
  });

  factory BaseResponse.fromJson(Map<String, dynamic> json) => _$BaseResponseFromJson(json);
  Map<String, dynamic> toJson() => _$BaseResponseToJson(this);
}
