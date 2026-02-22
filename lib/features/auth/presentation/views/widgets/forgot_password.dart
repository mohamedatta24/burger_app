import 'package:burger_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Text(
        "Forgot Password?",
        style: TextStyle(fontSize: 14.0, color: AppColors.grey),
      ),
    );
  }
}
