import 'package:burger_app/core/theme/app_colors.dart';
import 'package:burger_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class CustomInfoUser extends StatelessWidget {
  const CustomInfoUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Burger?",
              style: TextStyle(
                color: AppColors.white,
                fontSize: 28.0,
                fontFamily: "Rubik Dirt",
              ),
            ),
            const SizedBox(height: 4.0),
            const Text(
              "Hello, Mohamed Atta",
              style: TextStyle(
                color: AppColors.grey,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        CircleAvatar(
          radius: 30.0,
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(Assets.imagesUser, fit: BoxFit.fill),
          ),
        ),
      ],
    );
  }
}
