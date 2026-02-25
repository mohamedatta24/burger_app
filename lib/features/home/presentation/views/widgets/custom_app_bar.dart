import 'package:burger_app/core/utils/app_colors.dart';
import 'package:burger_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            const Text(
              "Burger?",
              style: TextStyle(
                fontSize: 32.0,
                color: Colors.white,
                fontFamily: "Rubik Dirt",
              ),
            ),

            const Text(
              "Hello, Mohamed Atta",
              style: TextStyle(
                fontSize: 14.0,
                color: AppColors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),

        Image.asset(Assets.imagesUserPhoto, width: 50.0, height: 50.0),
      ],
    );
  }
}
