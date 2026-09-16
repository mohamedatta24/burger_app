import 'package:burger_app/core/theme/app_colors.dart';
import 'package:burger_app/core/utils/app_images.dart';
import 'package:burger_app/core/widgets/custom_button.dart';
import 'package:burger_app/features/home/presentation/views/widgets/custom_quantity.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
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
                    children: [
                      ConstrainedBox(
                        constraints: BoxConstraints(maxHeight: 130),
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: Image.asset(Assets.imagesBurger),
                        ),
                      ),
                      const Text(
                        "Cheeseburger\nWendy's Burger",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 32.0),
                  const Expanded(
                    child: Column(
                      children: [
                        CustomQuantity(
                          colorButton: Color(0xff1B1C1F),
                          backgroundColor: AppColors.black,
                        ),
                        SizedBox(height: 16.0),
                        CustomButton(text: "Remove", radius: 50.0, height: 50),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
