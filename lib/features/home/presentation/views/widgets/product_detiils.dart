import 'package:burger_app/core/theme/app_colors.dart';
import 'package:burger_app/core/utils/app_images.dart';
import 'package:burger_app/core/widgets/custom_button.dart';
import 'package:burger_app/features/home/presentation/views/widgets/custom_quantity_and_price.dart';
import 'package:flutter/material.dart';

class ProductDetiils extends StatelessWidget {
  const ProductDetiils({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: [
                    Column(
                      children: [
                        Center(
                          child: ConstrainedBox(
                            constraints: BoxConstraints(maxHeight: 250),
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: Image.asset(Assets.imagesBurger),
                            ),
                          ),
                        ),
                        const Text(
                          "Cheeseburger Wendy's Burger",
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                            color: AppColors.white,
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        const Text(
                          textAlign: TextAlign.center,
                          "Where fresh ingredients and melted cheese come together for the ultimate burger experience, delivering flavor that keeps you coming back for more",
                          style: TextStyle(
                            height: 1.5,
                            color: AppColors.grey,
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                    const Expanded(child: SizedBox(height: 32.0)),
                    CustomQuantityAndPrice(),
                    const SizedBox(height: 16.0),
                    const CustomButton(text: "Add To Cart"),
                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
