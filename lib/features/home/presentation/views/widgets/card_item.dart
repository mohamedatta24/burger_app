import 'package:burger_app/core/utils/app_colors.dart';
import 'package:burger_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: AppColors.backgroundDark,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Image.asset(Assets.imagesCard2, fit: BoxFit.fill)),
          Text(
            "Cheeseburger\nWendy's Burger",
            style: TextStyle(
              color: AppColors.white,
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          Row(
            children: [
              Icon(Icons.star, color: AppColors.orange, size: 18.0),
              Icon(Icons.star, color: AppColors.orange, size: 18.0),
              SizedBox(width: 5.0),
              Text(
                "4.5",
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Text(
                "\$ 5.99",
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
