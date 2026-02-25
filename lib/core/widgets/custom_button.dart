import 'package:burger_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.onTap,
    this.borderRadius,
  });

  final String text;
  final void Function()? onTap;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(
          color: AppColors.orange,
          borderRadius: borderRadius ?? BorderRadius.circular(7.0),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16.0,
              color: AppColors.background,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
