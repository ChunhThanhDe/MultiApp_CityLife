import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sixam_mart_user/base/network_exceptions.dart';

part '../generated/base/api_result.freezed.dart';

@freezed
sealed class ApiResult with _$ApiResult {
  const factory ApiResult.success(Response response) = Success;
  const factory ApiResult.failure(NetworkExceptions error) = Failure;
}
