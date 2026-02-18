import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({super.key, required this.controller});

  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: 3,
      axisDirection: Axis.horizontal,
      effect: ExpandingDotsEffect(
        spacing: 8.0,
        radius: 50.0,
        dotWidth: 24.0,
        dotHeight: 8.0,
        paintStyle: PaintingStyle.fill,
        strokeWidth: 1.5,
        dotColor: Color(0xffB0B0B0),
        activeDotColor: Color(0xffDE6717),
      ),
    );
  }
}
