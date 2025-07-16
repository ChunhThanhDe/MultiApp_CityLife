import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../base/base_request.dart';

part '../../../generated/domain/models/request/search_request.g.dart';

@JsonSerializable()
class SearchRequest extends BaseRequest {
  @JsonKey(name: "q")
  final String? query;

  @JsonKey(name: "id")
  final int? id;

  @JsonKey(name: "limit")
  final int limit;

  @JsonKey(name: "offset")
  final int offset;

  SearchRequest({
    this.query,
    this.id,
    this.limit = 10,
    this.offset = 0,
  });

  factory SearchRequest.fromJson(Map<String, dynamic> json) => _$SearchRequestFromJson(json);

  @override
  Map<String, dynamic> toRawJson() => _$SearchRequestToJson(this);
}
