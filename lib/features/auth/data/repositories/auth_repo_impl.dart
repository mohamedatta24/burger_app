import 'package:burger_app/core/services/api_error.dart';
import 'package:burger_app/core/services/api_exceptions.dart';

import 'package:burger_app/core/services/api_service.dart';
import 'package:burger_app/core/services/shared_pref.dart';

import 'package:burger_app/features/auth/data/models/user_model.dart';
import 'package:burger_app/features/auth/domain/entities/user_entity.dart';
import 'package:burger_app/features/auth/domain/repositories/auth_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class AuthRepoImpl implements AuthRepo {
  final ApiService apiService;
  AuthRepoImpl({required this.apiService});

  @override
  Future<Either<ApiError, UserEntity>> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await apiService.post("/login", {
        "email": email,
        "password": password,
      });
      final user = UserModel.fromJson(response);
      if (user.token != null) {
        SharedPref.saveToken(user.token!);
      }

      return Right(user);
    } catch (e) {
      return Left(ApiError(message: e.toString()));
    }
  }

  @override
  Future<Either<ApiError, UserEntity>> signup({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final response = await apiService.post("/register", {
        "name": name,
        "email": email,
        "password": password,
      });

      final user = UserModel.fromJson(response);
      // if (user.token != null) {
      //   SharedPref.saveToken(user.token!);
      // }

      return Right(user);
    } catch (e) {
      return Left(ApiError(message: e.toString()));
    }
  }

  /// ================= Get Profile =================
  @override
  Future<Either<ApiError, UserEntity>> getProfileData() async {
    try {
      final response = await apiService.get("/profile");
      final user = UserModel.fromJson(response);
      return Right(user);
    } on DioException catch (e) {
      return Left(ApiExceptions.handleException(e));
    } catch (e) {
      return Left(ApiError(message: "Unexpected error occurred"));
    }
  }

  /// ================= update Profile =================
  @override
  Future<Either<ApiError, UserEntity>> updateProfileData({
    required String name,
    required String email,
    required String address,
    String? imagePath,
    String? visa,
  }) async {
    try {
      final formData = FormData.fromMap({
        "name": name,
        "email": email,
        "address": address,
        if (imagePath != null && imagePath.isNotEmpty)
          "image": await MultipartFile.fromFile(
            imagePath,
            filename: "profile.jpg",
          ),
        if (visa != null && visa.isNotEmpty) "Visa": visa,
      });
      final response = await apiService.post("/update-profile", formData);
      final user = UserModel.fromJson(response);
      return Right(user);
    } on DioException catch (e) {
      return Left(ApiExceptions.handleException(e));
    } catch (e) {
      return Left(ApiError(message: "Unexpected error occurred"));
    }
  }

  @override
  Future<void> logout() async {
    final response = await apiService.post("/logout", {});
    if (response['data'] != null) {
      throw ApiError(message: "Unexpected error occurred");
    }
    await SharedPref.clearToken();
  }

  @override
  Future<Either<ApiError, UserEntity>> autoLogin() async {
    try {
      final token = await SharedPref.getToken();

      if (token == null || token.isEmpty) {
        return Left(ApiError(message: "No token found"));
      }

      final response = await apiService.get("/profile");
      final user = UserModel.fromJson(response);

      return Right(user);
    } on DioException catch (e) {
      await SharedPref.clearToken();
      return Left(ApiExceptions.handleException(e));
    } catch (e) {
      await SharedPref.clearToken();
      return Left(ApiError(message: "Auto login failed"));
    }
  }
}
