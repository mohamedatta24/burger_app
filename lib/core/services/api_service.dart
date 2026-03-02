import 'package:burger_app/core/services/api_error.dart';
import 'package:burger_app/core/services/api_exceptions.dart';
import 'package:burger_app/core/services/dio_client.dart';
import 'package:dio/dio.dart';

class ApiService {
  final DioClient _dioClient;
  ApiService(this._dioClient);

  // GET request
  Future<dynamic> get(String endPoint) async {
    try {
      final response = await _dioClient.dio.get(endPoint);
      return response.data;
    } on DioException catch (e) {
      throw ApiExceptions.handleException(e);
    } catch (e) {
      throw ApiError(message: e.toString());
    }
  }

  // POST request
  Future<dynamic> post(String endPoint, Map<String, dynamic> body) async {
    try {
      final response = await _dioClient.dio.post(endPoint, data: body);
      return response.data;
    } on DioException catch (e) {
      throw ApiExceptions.handleException(e);
    } catch (e) {
      throw ApiError(message: e.toString());
    }
  }

  // PUT request
  Future<dynamic> put({
    required String endPoint,
    required Map<String, dynamic> body,
  }) async {
    try {
      final response = await _dioClient.dio.put(endPoint, data: body);
      return response.data;
    } on DioException catch (e) {
      throw ApiExceptions.handleException(e);
    } catch (e) {
      throw ApiError(message: e.toString());
    }
  }

  // DELETE request
  Future<dynamic> delete(String endPoint) async {
    try {
      final response = await _dioClient.dio.delete(endPoint);
      return response.data;
    } on DioException catch (e) {
      throw ApiExceptions.handleException(e);
    } catch (e) {
      throw ApiError(message: e.toString());
    }
  }
}
