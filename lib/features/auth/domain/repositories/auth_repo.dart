import 'package:burger_app/core/services/api_error.dart';
import 'package:burger_app/features/auth/domain/entities/user_entity.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepo {
  Future<Either<ApiError, UserEntity>> login({
    required String email,
    required String password,
  });

  Future<Either<ApiError, UserEntity>> signup({
    required String name,
    required String email,
    required String password,
  });

  Future<Either<ApiError, UserEntity>> getProfileData();
  // Future<Either<ApiError, UserEntity>> updateProfileData();
}
