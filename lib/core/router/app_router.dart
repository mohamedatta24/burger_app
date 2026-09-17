import 'package:burger_app/core/router/router_name.dart';
import 'package:burger_app/features/auth/presentation/views/login/login_view.dart';
import 'package:burger_app/features/auth/presentation/views/signup/signup_view.dart';
import 'package:burger_app/features/home/presentation/views/home_view.dart';
import 'package:burger_app/features/onboarding/presentation/views/on_boarding_view.dart';
import 'package:burger_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case RouterName.splash:
      return MaterialPageRoute(builder: (_) => const SplashView());

    case RouterName.onBoarding:
      return MaterialPageRoute(builder: (_) => const OnBoardingView());

    case RouterName.login:
      return MaterialPageRoute(builder: (_) => const LoginView());

    case RouterName.signup:
      return MaterialPageRoute(builder: (_) => const SignupView());
    case RouterName.home:
      return MaterialPageRoute(builder: (_) => const HomeView());
    default:
      return MaterialPageRoute(builder: (_) => const SizedBox());
  }
}
