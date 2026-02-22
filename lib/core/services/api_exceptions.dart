import 'package:burger_app/core/services/api_error.dart';
import 'package:dio/dio.dart';

class ApiExceptions {
  static const String noInternetConnection = 'No internet connection';
  static const String badRequest = 'Bad request';
  static const String unauthorized = 'Unauthorized';
  static const String forbidden = 'Forbidden';
  static const String notFound = 'Not found';
  static const String internalServerError = 'Internal server error';
  static const String unknownError = 'Unknown error occurred';

  static ApiError handleException(DioException exception) {
    switch (exception.type) {
      case DioExceptionType.connectionTimeout:
        return ApiError(message: noInternetConnection);
      case DioExceptionType.sendTimeout:
        return ApiError(message: noInternetConnection);
      case DioExceptionType.receiveTimeout:
        return ApiError(message: noInternetConnection);
      case DioExceptionType.badResponse:
        final statusCode = exception.response?.statusCode;
        final message =
            exception.response?.data['message'] ?? 'An error occurred';
        return ApiError(message: message, statusCode: statusCode);
      case DioExceptionType.cancel:
        return ApiError(message: 'Request cancelled');
      case DioExceptionType.unknown:
        return ApiError(message: unknownError);
      default:
        return ApiError(message: unknownError);
    }
  }
}
