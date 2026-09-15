import 'package:burger_app/core/theme/app_colors.dart';
import 'package:burger_app/features/auth/presentation/views/login/login_view.dart';
import 'package:burger_app/features/auth/presentation/views/signup/signup_view.dart';
import 'package:burger_app/features/onboarding/presentation/views/on_boarding_view.dart';
import 'package:burger_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BurgerApp());
}

class BurgerApp extends StatelessWidget {
  const BurgerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: AppColors.black),
      home: const SignupView(),
    );
  }
}
