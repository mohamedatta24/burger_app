import 'package:burger_app/features/OnBoarding/models/on_boarding_item_model.dart';
import 'package:flutter/material.dart';

class OnBoardingItem extends StatelessWidget {
  const OnBoardingItem({super.key, required this.onBoardingItemModel});

  final OnBoardingItemModel onBoardingItemModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(onBoardingItemModel.image),
        Text(
          onBoardingItemModel.title,
          style: TextStyle(
            fontSize: 24.0,
            color: Colors.white,
            fontFamily: "Rubik Dirt",
          ),
        ),
        SizedBox(height: 16.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Text(
            textAlign: TextAlign.center,
            onBoardingItemModel.subTitle,
            style: TextStyle(fontSize: 16.0, color: Color(0xffB0B0B0)),
          ),
        ),
      ],
    );
  }
}
