import 'package:burger_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CutomText extends StatelessWidget {
  const CutomText({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: TextStyle(
          fontSize: 32.0,
          color: AppColors.white,
          fontFamily: "Rubik Dirt",
        ),
      ),
    );
  }
}
