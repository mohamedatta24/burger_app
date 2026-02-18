import 'package:burger_app/core/widgets/custom_button.dart';
import 'package:burger_app/features/OnBoarding/presentation/views/widgets/custom_indicator.dart';
import 'package:burger_app/features/OnBoarding/presentation/views/widgets/on_boarding_item_page_view.dart';
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
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentIndex = pageController.page!.round();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Expanded(child: OnBoardingItemPageView(controller: pageController)),
          CustomIndicator(controller: pageController),
          const SizedBox(height: 32.0),
          CustomButton(
            text: currentIndex == 2 ? "Get Started" : "Next",
            onTap: () {
              pageController.nextPage(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            },
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),
        ],
      ),
    );
  }
}
