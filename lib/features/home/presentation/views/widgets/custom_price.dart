import 'package:burger_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomPrice extends StatelessWidget {
  const CustomPrice({super.key, required this.price});

  final String price;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Total Price",
          style: TextStyle(
            fontSize: 12.0,
            color: AppColors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          price,
          style: const TextStyle(
            fontSize: 24.0,
            color: AppColors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}