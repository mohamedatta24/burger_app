import 'package:burger_app/core/utils/app_images.dart';
import 'package:burger_app/features/onboarding/data/models/on_boarding_item_model.dart';
import 'package:burger_app/features/onboarding/presentation/views/widgets/on_boarding_item.dart';
import 'package:flutter/material.dart';

class OnBoardingItemPageView extends StatelessWidget {
  const OnBoardingItemPageView({super.key, required this.controller});
  final PageController controller;
  final List<OnBoardingItemModel> items = const [
    OnBoardingItemModel(
      image: Assets.imagesOnBoarding1,
      title: "Craving a Burger",
      subTitle:
          "Discover nearby restaurants and get your favorite meals delivered fast",
    ),
    OnBoardingItemModel(
      image: Assets.imagesOnBoarding2,
      title: "Fast & Fresh",
      subTitle: "Order in seconds and get your burger hot and ready",
    ),
    OnBoardingItemModel(
      image: Assets.imagesOnBoarding3,
      title: "Delivered to You",
      subTitle: "Enjoy your favorite burger at home work, or anywhere",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller:  controller,
      physics: BouncingScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return OnBoardingItem(onBoardingItemModel: items[index]);
      },
    );
  }
}
