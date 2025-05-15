import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sixam_mart_user/app/localization/locale_keys.g.dart';
import 'package:sixam_mart_user/base/error.dart';

part '../generated/base/network_exceptions.freezed.dart';

@freezed
abstract class NetworkExceptions with _$NetworkExceptions {
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
    ErrorModel? errorModel;

    try {
      errorModel = ErrorModel.fromJson(response?.data);
    } catch (e) {
      log('ErrorModel.fromJson error: $e', name: 'NetworkExceptions');
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
            errorModel?.message ?? tr(LocaleKeys.base_error_default));
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
          errorModel?.message ?? tr(LocaleKeys.base_error_default),
        );
    }
  }

  static NetworkExceptions getDioException(error) {
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
              networkExceptions =
                  NetworkExceptions.handleResponse(error.response);
              break;
            case DioExceptionType.sendTimeout:
              networkExceptions = const NetworkExceptions.requestTimeout();
              break;
            case DioExceptionType.badCertificate:
              networkExceptions = const NetworkExceptions.badRequest();
              break;
            case DioExceptionType.unknown:
              networkExceptions =
                  NetworkExceptions.handleResponse(error.response);
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
    var errorMessage = '';
    networkExceptions.when(notImplemented: () {
      errorMessage = tr(LocaleKeys.base_error_default);
    }, requestCancelled: () {
      errorMessage = tr(LocaleKeys.base_error_default);
    }, internalServerError: () {
      errorMessage = tr(LocaleKeys.base_error_default);
    }, notFound: (String reason) {
      errorMessage = reason;
    }, serviceUnavailable: () {
      errorMessage = tr(LocaleKeys.base_error_default);
    }, methodNotAllowed: () {
      errorMessage = tr(LocaleKeys.base_error_default);
    }, badRequest: () {
      errorMessage = tr(LocaleKeys.base_error_default);
    }, unauthorizedRequest: (String error) {
      errorMessage = error;
    }, unexpectedError: () {
      errorMessage = tr(LocaleKeys.base_error_default);
    }, requestTimeout: () {
      errorMessage = tr(LocaleKeys.base_error_timeout);
    }, noInternetConnection: () {
      errorMessage = tr(LocaleKeys.base_error_noInternet);
    }, conflict: () {
      errorMessage = tr(LocaleKeys.base_error_default);
    }, sendTimeout: () {
      errorMessage = tr(LocaleKeys.base_error_default);
    }, unableToProcess: () {
      errorMessage = tr(LocaleKeys.base_error_default);
    }, defaultError: (String error) {
      errorMessage = error;
    }, formatException: () {
      errorMessage = tr(LocaleKeys.base_error_default);
    }, notAcceptable: () {
      errorMessage = tr(LocaleKeys.base_error_default);
    });
    return errorMessage;
  }
}
