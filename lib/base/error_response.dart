import 'package:json_annotation/json_annotation.dart';

part '../generated/base/error_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ErrorResponse {
  final List<ErrorModel> errors;

  ErrorResponse(this.errors);

  factory ErrorResponse.fromJson(Map<String, dynamic> json) => _$ErrorResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ErrorResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ErrorModel {
  final String code;
  final String message;

  ErrorModel(this.code, this.message);

  factory ErrorModel.fromJson(Map<String, dynamic> json) => _$ErrorModelFromJson(json);
  Map<String, dynamic> toJson() => _$ErrorModelToJson(this);
}
