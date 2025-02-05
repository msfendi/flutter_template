import 'package:dio/dio.dart';
import 'package:flutter_template/utils/manager/string_manager.dart';

class Failure {
  final String message;
  final int statusCode;
  final List<Map<String, dynamic>>? errors;

  Failure({
    required this.statusCode,
    required this.message,
    this.errors,
  });
}

class ResponseCode {
  static const int success = 200;
  static const int noContent = 204;
  static const int badRequest = 400;
  static const int forbidden = 403;
  static const int unauthorized = 401;
  static const int notFound = 404;
  static const int internalServerError = 500;

  // local status code
  static const int connectTimeout = -1;
  static const int cancel = -2;
  static const int receiveTimeout = -3;
  static const int sendTimeout = -4;
  static const int cacheError = -5;
  static const int noInternetError = -6;
  static const int defaultError = -7;
}

class ResponseMessage {
  static const String success = AppStrings.success;
  static const String noContent = AppStrings.strNoContent;
  static const String badRequest = AppStrings.strBadRequestError;
  static const String forbidden = AppStrings.strForbiddenError;
  static const String unauthorized = AppStrings.strUnauthorizedError;
  static const String notFound = AppStrings.strNotFoundError;
  static const String internalServerError = AppStrings.strInternalServerError;

  static const String connectTimeout = AppStrings.strTimeoutError;
  static const String cancel = AppStrings.strDefaultError;
  static const String receiveTimeout = AppStrings.strTimeoutError;
  static const String sendTimeout = AppStrings.strTimeoutError;
  static const String cacheError = AppStrings.strCacheError;
  static const String noInternetError = AppStrings.strNoInternetError;
  static const String defaultError = AppStrings.strDefaultError;
}

enum DataSource {
  success,
  noContent,
  badRequest,
  forbidden,
  unauthorized,
  notFound,
  internalServerError,
  connectTimeout,
  cancel,
  receiveTimeout,
  sendTimeout,
  cacheError,
  noInternetConnection,
  defaultError,
}

extension DataSourceExtension on DataSource {
  Failure get failure {
    switch (this) {
      case DataSource.badRequest:
        return Failure(
          message: ResponseMessage.badRequest,
          statusCode: ResponseCode.badRequest,
        );
      case DataSource.forbidden:
        return Failure(
          message: ResponseMessage.forbidden,
          statusCode: ResponseCode.forbidden,
        );
      case DataSource.unauthorized:
        return Failure(
          message: ResponseMessage.unauthorized,
          statusCode: ResponseCode.unauthorized,
        );
      case DataSource.notFound:
        return Failure(
          message: ResponseMessage.notFound,
          statusCode: ResponseCode.notFound,
        );
      case DataSource.internalServerError:
        return Failure(
          message: ResponseMessage.internalServerError,
          statusCode: ResponseCode.internalServerError,
        );
      case DataSource.connectTimeout:
        return Failure(
          message: ResponseMessage.connectTimeout,
          statusCode: ResponseCode.connectTimeout,
        );
      case DataSource.cancel:
        return Failure(
          message: ResponseMessage.cancel,
          statusCode: ResponseCode.cancel,
        );
      case DataSource.receiveTimeout:
        return Failure(
          message: ResponseMessage.receiveTimeout,
          statusCode: ResponseCode.receiveTimeout,
        );
      case DataSource.sendTimeout:
        return Failure(
          message: ResponseMessage.sendTimeout,
          statusCode: ResponseCode.sendTimeout,
        );
      case DataSource.cacheError:
        return Failure(
          message: ResponseMessage.cacheError,
          statusCode: ResponseCode.cacheError,
        );
      case DataSource.noInternetConnection:
        return Failure(
          message: ResponseMessage.noInternetError,
          statusCode: ResponseCode.noInternetError,
        );
      default:
        return Failure(
          message: ResponseMessage.defaultError,
          statusCode: ResponseCode.defaultError,
        );
    }
  }
}

Failure _handleError(DioException error) {
  switch (error.type) {
    case DioExceptionType.connectionTimeout:
      return DataSource.connectTimeout.failure;
    case DioExceptionType.sendTimeout:
      return DataSource.sendTimeout.failure;
    case DioExceptionType.receiveTimeout:
      return DataSource.receiveTimeout.failure;
    case DioExceptionType.badResponse:
      if (error.response != null &&
          error.response?.statusCode != null &&
          error.response?.statusMessage != null) {
        return Failure(
          statusCode: error.response?.statusCode ?? 0,
          message: error.response?.statusMessage ?? '',
        );
      } else {
        return DataSource.defaultError.failure;
      }
    case DioExceptionType.cancel:
      return DataSource.cancel.failure;
    default:
      return DataSource.defaultError.failure;
  }
}

class ErrorHandler implements Exception {
  late Failure failure;

  ErrorHandler.handle(dynamic error) {
    if (error is DioException) {
      // dio error so its an error from response of the API or from dio itself
      failure = _handleError(error);
    } else {
      // default error
      failure = DataSource.defaultError.failure;
    }
  }
}