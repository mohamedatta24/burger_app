import 'package:burger_app/features/OnBoarding/presentation/views/on_boarding_view.dart';
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
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xff131214)),
      debugShowCheckedModeBanner: false,
      home: const OnBoardingView(),
    );
  }
}
