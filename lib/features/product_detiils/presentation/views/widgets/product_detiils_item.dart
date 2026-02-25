import 'package:burger_app/core/utils/app_colors.dart';
import 'package:burger_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class ProductDetiilsItem extends StatelessWidget {
  const ProductDetiilsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          Assets.imagesCard2,
          fit: BoxFit.fill,
          width: 200.0,
          height: 200.0,
        ),
        SizedBox(height: 16.0),
        const Text(
          "Cheeseburger Wendy's Burger",
          style: TextStyle(
            color: AppColors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16.0),
        const Text(
          textAlign: TextAlign.center,
          "A cheeseburger is a hamburger topped with cheese. The cheese is usually added to the cooking hamburger patty shortly before serving, which allows it to melt.",
          style: TextStyle(height: 1.5, color: AppColors.grey, fontSize: 14.0),
        ),
      ],
    );
  }
}
