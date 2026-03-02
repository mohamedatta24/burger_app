import 'dart:developer';

import 'package:burger_app/core/services/shared_pref.dart';
import 'package:dio/dio.dart';

class DioClient {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: "https://sonic-zdi0.onrender.com/api",
      headers: {"Content-Type": "application/json"},
    ),
  );

  DioClient() {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final token = await SharedPref.getToken();
          if (token != null && token.isNotEmpty) {
            options.headers['Authorization'] = "Bearer $token";
          }
          print("   Headers after token: ${options.headers}");
          print("   Body: ${options.data}");
          return handler.next(options);
        },

        onResponse: (response, handler) {
          print(
            "✅ RESPONSE: ${response.statusCode} ${response.requestOptions.path}",
          );
          print("   Data: ${response.data}");
          return handler.next(response);
        },

        onError: (DioException e, handler) {
          print("❌ ERROR: ${e.message}");
          if (e.response != null) {
            print("   Status code: ${e.response?.statusCode}");
            print("   Data: ${e.response?.data}");
          }
          return handler.next(e);
        },
      ),
    );
  }

  Dio get dio => _dio;
}
