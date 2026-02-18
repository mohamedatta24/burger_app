import 'package:burger_app/core/utils/app_colors.dart';
import 'package:burger_app/features/OnBoarding/presentation/views/on_boarding_view.dart';
import 'package:burger_app/features/login/presentation/views/login_view.dart';
import 'package:burger_app/features/login/presentation/views/signup_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BurgerApp());
}

class BurgerApp extends StatelessWidget {
  const BurgerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: AppColors.background),
      debugShowCheckedModeBanner: false,
      home: const SignupView(),
    );
  }
}
