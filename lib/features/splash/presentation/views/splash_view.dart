import 'package:burger_app/core/services/dependency_injection.dart';
import 'package:burger_app/features/auth/presentation/session_cubits/session_cubit.dart';
import 'package:burger_app/features/splash/presentation/views/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) => getIt<SessionCubit>(),
          child: const SplashViewBody(),
        ),
      ),
    );
  }
}
