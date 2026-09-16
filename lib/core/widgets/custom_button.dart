import 'package:burger_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.onTap, this.radius, this.height});

  final String text;
  final void Function()? onTap;
  final double? radius;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: height ?? 60.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 7.0),
          color: AppColors.orange,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: AppColors.black,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
