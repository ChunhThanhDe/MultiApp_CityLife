// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/request/search_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchRequest _$SearchRequestFromJson(Map<String, dynamic> json) =>
    SearchRequest(
      query: json['q'] as String?,
      id: (json['id'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt() ?? 10,
      offset: (json['offset'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$SearchRequestToJson(SearchRequest instance) =>
    <String, dynamic>{
      'q': instance.query,
      'id': instance.id,
      'limit': instance.limit,
      'offset': instance.offset,
    };
