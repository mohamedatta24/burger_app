import 'package:burger_app/core/services/api_error.dart';

import 'package:burger_app/core/services/api_service.dart';
import 'package:burger_app/features/auth/data/models/user_model.dart';
import 'package:burger_app/features/auth/domain/entities/user_entity.dart';
import 'package:burger_app/features/auth/domain/repositories/auth_repo.dart';
import 'package:dartz/dartz.dart';

class AuthRepoImpl implements AuthRepo {
  final ApiService apiService;
  AuthRepoImpl({required this.apiService});

  @override
  Future<Either<ApiError, UserEntity>> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await apiService.post(
        endPoint: "/login",
        body: {"email": email, "password": password},
      );
      final user = UserModel.fromJson(response);
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
      final response = await apiService.post(
        endPoint: "/register",
        body: {"name": name, "email": email, "password": password},
      );
      final user = UserModel.fromJson(response);
      


      return Right(user);
    } catch (e) {
      return Left(ApiError(message: e.toString()));
    }
  }
}
