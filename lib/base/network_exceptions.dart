import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sixam_mart_user/app/localization/locale_keys.g.dart';
import 'package:sixam_mart_user/base/error_response.dart';

part '../generated/base/network_exceptions.freezed.dart';

@freezed
sealed class NetworkExceptions with _$NetworkExceptions {
  const factory NetworkExceptions.requestCancelled() = RequestCancelled;

  const factory NetworkExceptions.unauthorizedRequest(String reason) =
      UnauthorizedRequest;

  const factory NetworkExceptions.badRequest() = BadRequest;

  const factory NetworkExceptions.notFound(String reason) = NotFound;

  const factory NetworkExceptions.methodNotAllowed() = MethodNotAllowed;

  const factory NetworkExceptions.notAcceptable() = NotAcceptable;

  const factory NetworkExceptions.requestTimeout() = RequestTimeout;

  const factory NetworkExceptions.sendTimeout() = SendTimeout;

  const factory NetworkExceptions.conflict() = Conflict;

  const factory NetworkExceptions.internalServerError() = InternalServerError;

  const factory NetworkExceptions.notImplemented() = NotImplemented;

  const factory NetworkExceptions.serviceUnavailable() = ServiceUnavailable;

  const factory NetworkExceptions.noInternetConnection() = NoInternetConnection;

  const factory NetworkExceptions.formatException() = FormatException;

  const factory NetworkExceptions.unableToProcess() = UnableToProcess;

  const factory NetworkExceptions.defaultError(String error) = DefaultError;

  const factory NetworkExceptions.unexpectedError() = UnexpectedError;

  static NetworkExceptions handleResponse(Response? response) {
    ErrorResponse? errorResponse;

    try {
      errorResponse = ErrorResponse.fromJson(response?.data);
    } catch (e) {
      log('ErrorResponse.fromJson error: $e', name: 'NetworkExceptions');
    }

    int statusCode = response?.statusCode ?? 0;
    switch (statusCode) {
      case 400:
        return const NetworkExceptions.badRequest();
      case 401:
        return const NetworkExceptions.badRequest();
      // return Logout.logout(true);
      case 403:
        return const NetworkExceptions.badRequest();
      // return Logout.logout(true);
      case 404:
        return NetworkExceptions.notFound(
          errorResponse?.errors.first.message ??
              tr(LocaleKeys.base_error_default),
        );
      case 409:
        return const NetworkExceptions.conflict();
      case 408:
        return const NetworkExceptions.requestTimeout();
      case 500:
        return const NetworkExceptions.internalServerError();
      case 503:
        return const NetworkExceptions.serviceUnavailable();
      default:
        return NetworkExceptions.defaultError(
          errorResponse?.errors.first.message ??
              tr(LocaleKeys.base_error_default),
        );
    }
  }

  static NetworkExceptions getDioException(Object error) {
    if (error is Exception) {
      try {
        NetworkExceptions networkExceptions;
        if (error is DioException) {
          switch (error.type) {
            case DioExceptionType.cancel:
              networkExceptions = const NetworkExceptions.requestCancelled();
              break;
            case DioExceptionType.connectionTimeout:
              networkExceptions = const NetworkExceptions.requestTimeout();
              break;
            case DioExceptionType.connectionError:
              networkExceptions =
                  const NetworkExceptions.noInternetConnection();
              break;
            case DioExceptionType.receiveTimeout:
              networkExceptions = const NetworkExceptions.sendTimeout();
              break;
            case DioExceptionType.badResponse:
              networkExceptions = NetworkExceptions.handleResponse(
                error.response,
              );
              break;
            case DioExceptionType.sendTimeout:
              networkExceptions = const NetworkExceptions.requestTimeout();
              break;
            case DioExceptionType.badCertificate:
              networkExceptions = const NetworkExceptions.badRequest();
              break;
            case DioExceptionType.unknown:
              networkExceptions = NetworkExceptions.handleResponse(
                error.response,
              );
              break;
          }
        } else if (error is SocketException) {
          networkExceptions = const NetworkExceptions.noInternetConnection();
        } else {
          networkExceptions = const NetworkExceptions.unexpectedError();
        }
        return networkExceptions;
      } on FormatException {
        return const NetworkExceptions.formatException();
      } catch (_) {
        return const NetworkExceptions.unexpectedError();
      }
    } else {
      if (error.toString().contains('is not a subtype of')) {
        return const NetworkExceptions.unableToProcess();
      } else {
        return const NetworkExceptions.unexpectedError();
      }
    }
  }

  static String getErrorMessage(NetworkExceptions networkExceptions) {
    return switch (networkExceptions) {
      NotImplemented() => tr(LocaleKeys.base_error_default),
      RequestCancelled() => tr(LocaleKeys.base_error_default),
      InternalServerError() => tr(LocaleKeys.base_error_default),
      NotFound(:final String reason) => reason,
      ServiceUnavailable() => tr(LocaleKeys.base_error_default),
      MethodNotAllowed() => tr(LocaleKeys.base_error_default),
      BadRequest() => tr(LocaleKeys.base_error_default),
      UnauthorizedRequest() => tr(LocaleKeys.base_error_default),
      UnexpectedError() => tr(LocaleKeys.base_error_default),
      RequestTimeout() => tr(LocaleKeys.base_error_timeout),
      NoInternetConnection() => tr(LocaleKeys.base_error_noInternet),
      Conflict() => tr(LocaleKeys.base_error_default),
      SendTimeout() => tr(LocaleKeys.base_error_default),
      UnableToProcess() => tr(LocaleKeys.base_error_default),
      DefaultError(:final String error) => error,
      FormatException() => tr(LocaleKeys.base_error_default),
      NotAcceptable() => tr(LocaleKeys.base_error_default),
    };
  }
}
