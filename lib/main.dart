import 'package:burger_app/core/services/dependency_injection.dart';
import 'package:burger_app/core/utils/app_colors.dart';
import 'package:burger_app/features/auth/presentation/views/login_view.dart';
import 'package:burger_app/features/home/presentation/views/widgets/main_bottom_nav_bar.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() async {
  dependencyInjection();
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => const BurgerApp(), // Wrap your app
    ),
  );
}

class BurgerApp extends StatelessWidget {
  const BurgerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: AppColors.background),

      debugShowCheckedModeBanner: false,
      home: const MainBottomNavBar(),
    );
  }
}
