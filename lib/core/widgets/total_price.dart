import 'package:burger_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({super.key, this.price});

  final String? price;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Total Price",
          style: TextStyle(
            color: AppColors.grey,
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4.0),
        Text(
          "\$$price",
          style: const TextStyle(
            color: AppColors.white,
            fontSize: 26.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
