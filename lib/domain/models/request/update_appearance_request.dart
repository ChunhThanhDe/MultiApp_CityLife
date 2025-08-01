import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:sixam_mart_user/base/base_request.dart';

part '../../../generated/domain/models/request/update_appearance_request.g.dart';

@JsonSerializable()
class UpdateAppearanceRequest extends BaseRequest {

  UpdateAppearanceRequest({required this.appearance});

  factory UpdateAppearanceRequest.fromJson(Map<String, dynamic> json) => _$UpdateAppearanceRequestFromJson(json);
  @JsonKey(name: 'appearance')
  final String appearance;

  @override
  Map<String, dynamic> toRawJson() => _$UpdateAppearanceRequestToJson(this);
}
