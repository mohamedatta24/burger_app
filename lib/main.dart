import 'package:burger_app/core/theme/app_colors.dart';
import 'package:burger_app/features/home/presentation/views/home_view.dart';
import 'package:burger_app/features/home/presentation/views/widgets/product_detiils.dart';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(enabled: true, builder: (context) => const BurgerApp()),
  );
}

class BurgerApp extends StatelessWidget {
  const BurgerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: AppColors.black),
      home: const ProductDetiils(),
    );
  }
}
