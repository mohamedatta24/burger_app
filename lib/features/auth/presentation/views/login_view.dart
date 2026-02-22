import 'package:burger_app/core/services/dependency_injection.dart';
import 'package:burger_app/features/auth/presentation/login_cubits/login_cubit.dart';
import 'package:burger_app/features/auth/presentation/views/widgets/login_view_body_bloc_consumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) => getIt<LoginCubit>(),
          child: const LoginViewBodyBlocConsumer(),
        ),
      ),
    );
  }
}

