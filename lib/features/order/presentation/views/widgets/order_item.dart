import 'package:burger_app/core/theme/app_colors.dart';
import 'package:burger_app/core/utils/app_images.dart';
import 'package:burger_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        bottom: 16.0,
        right: 16.0,
        left: 16.0,
        top: 8.0,
      ),
      decoration: BoxDecoration(
        color: const Color(0xff1B1C1F),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Cheeseburger",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.white,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Qty: X3",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.white,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Price: 20\$",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.white,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),

              ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 130),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset(Assets.imagesBurger),
                ),
              ),
            ],
          ),
          CustomButton(text: "Re Order"),
        ],
      ),
    );
  }
}
