import 'package:burger_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  const AlreadyHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Already have an account? ",
          style: TextStyle(fontSize: 14.0, color: AppColors.grey),
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            "Login",
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
              color: AppColors.orange,
            ),
          ),
        ),
      ],
    );
  }
}
