import 'package:burger_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomForgotPassword extends StatelessWidget {
  const CustomForgotPassword({super.key, this.onTap});

  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        "Forgot Password?",
        style: TextStyle(color: AppColors.grey, fontWeight: FontWeight.bold),
      ),
    );
  }
}
