import 'package:json_annotation/json_annotation.dart';

part '../generated/base/error_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ErrorResponse {

  ErrorResponse(this.errors);

  factory ErrorResponse.fromJson(Map<String, dynamic> json) => _$ErrorResponseFromJson(json);
  final List<ErrorModel> errors;
  Map<String, dynamic> toJson() => _$ErrorResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ErrorModel {

  ErrorModel(this.code, this.message);

  factory ErrorModel.fromJson(Map<String, dynamic> json) => _$ErrorModelFromJson(json);
  final String code;
  final String message;
  Map<String, dynamic> toJson() => _$ErrorModelToJson(this);
}
