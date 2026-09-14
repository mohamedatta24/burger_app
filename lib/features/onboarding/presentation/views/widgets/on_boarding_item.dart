import 'package:flutter/material.dart';
import 'package:burger_app/features/onboarding/data/models/on_boarding_item_model.dart';
import 'package:burger_app/core/theme/app_colors.dart';

class OnBoardingItem extends StatelessWidget {
  const OnBoardingItem({super.key, required this.onBoardingItemModel});

  final OnBoardingItemModel onBoardingItemModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 600, maxWidth: 600),
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(onBoardingItemModel.image),
            ),
          ),
        ),
        Text(
          onBoardingItemModel.title,
          style: const TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.w400,
            color: AppColors.white,
            fontFamily: "Rubik Dirt",
          ),
        ),
        const SizedBox(height: 16.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Text(
            textAlign: TextAlign.center,
            onBoardingItemModel.subTitle,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
              color: AppColors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
