import 'package:json_annotation/json_annotation.dart';

part '../../../generated/domain/models/response/get_module_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetModuleResponse {
  final int id;
  final String moduleName;
  final String status;
  final String moduleType;
  final String iconFullUrl;

  GetModuleResponse({required this.id, required this.moduleName, required this.status, required this.moduleType, required this.iconFullUrl});

  factory GetModuleResponse.fromJson(Map<String, dynamic> json) => _$GetModuleResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetModuleResponseToJson(this);
}
