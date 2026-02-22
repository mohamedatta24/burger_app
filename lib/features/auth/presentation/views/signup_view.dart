import 'package:burger_app/core/services/dependency_injection.dart';
import 'package:burger_app/features/auth/presentation/signup/signup_cubit.dart';

import 'package:burger_app/features/auth/presentation/views/widgets/signup_view_body_bloc_consumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) => getIt<SignupCubit>(),
          child: const SignupViewBodyBlocConsumer(),
        ),
      ),
    );
  }
}
