import 'package:burger_app/core/router/router_name.dart';
import 'package:burger_app/core/widgets/custom_button.dart';
import 'package:burger_app/features/onboarding/presentation/views/widgets/custom_dot_indicator.dart';
import 'package:burger_app/features/onboarding/presentation/views/widgets/on_boarding_item_page_view.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  int currentIndex = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentIndex = pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnBoardingItemPageView(controller: pageController)),
        const SizedBox(height: 32),
        CustomDotIndicator(controller: pageController),
        const SizedBox(height: 32),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomButton(
            text: currentIndex == 2 ? "Get Started" : "Next",
            onTap: () {
              if (currentIndex < 2) {
                pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              } else {
                Navigator.pushReplacementNamed(context, RouterName.login);
              }
            },
          ),
        ),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),
      ],
    );
  }
}
