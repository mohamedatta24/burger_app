import 'package:burger_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.onTap});

  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(
          color: AppColors.orange,
          borderRadius: BorderRadius.circular(7.0),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18.0,
              color: AppColors.background,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
