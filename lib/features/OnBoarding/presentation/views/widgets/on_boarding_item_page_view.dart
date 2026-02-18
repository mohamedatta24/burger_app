import 'package:burger_app/core/utils/app_images.dart';
import 'package:burger_app/features/OnBoarding/models/on_boarding_item_model.dart';
import 'package:burger_app/features/OnBoarding/presentation/views/widgets/on_boarding_item.dart';
import 'package:flutter/material.dart';

class OnBoardingItemPageView extends StatefulWidget {
  const OnBoardingItemPageView({super.key, required this.controller});

  final PageController controller;

  @override
  State<OnBoardingItemPageView> createState() => _OnBoardingItemPageViewState();
}

class _OnBoardingItemPageViewState extends State<OnBoardingItemPageView> {
  final List<OnBoardingItemModel> items = const [
    OnBoardingItemModel(
      image: Assets.imagesOnBoarding4,
      title: "Craving a Burger",
      subTitle:
          "Discover nearby restaurants and get your favorite meals delivered fast",
    ),
    OnBoardingItemModel(
      image: Assets.imagesOnBoarding5,
      title: "Fast & Fresh",
      subTitle: "Order in seconds and get your burger hot and ready",
    ),
    OnBoardingItemModel(
      image: Assets.imagesOnBoarding6,
      title: "Delivered to You",
      subTitle: "Enjoy your favorite burger at home work, or anywhere",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: widget.controller,
      physics: const BouncingScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return OnBoardingItem(onBoardingItemModel: items[index]);
      },
    );
  }
}
