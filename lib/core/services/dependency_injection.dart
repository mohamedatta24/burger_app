import 'package:burger_app/core/services/api_service.dart';
import 'package:burger_app/core/services/dio_client.dart';
import 'package:burger_app/features/auth/data/repositories/auth_repo_impl.dart';
import 'package:burger_app/features/auth/domain/repositories/auth_repo.dart';
import 'package:burger_app/features/auth/presentation/login_cubits/login_cubit.dart';
import 'package:burger_app/features/auth/presentation/signup/signup_cubit.dart';

import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void dependencyInjection() {
  getIt.registerSingleton<DioClient>(DioClient());
  getIt.registerSingleton<ApiService>(
    ApiService(dioClient: getIt<DioClient>()),
  );
  getIt.registerFactory<AuthRepo>(
    () => AuthRepoImpl(apiService: getIt<ApiService>()),
  );

  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt<AuthRepo>()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt<AuthRepo>()));
}
