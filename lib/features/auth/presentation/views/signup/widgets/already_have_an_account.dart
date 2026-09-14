import 'package:burger_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  const AlreadyHaveAnAccount({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Already have an account?  ",
          style: TextStyle( 
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
            color: AppColors.grey,
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            "Login",
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: AppColors.orange,
            ),
          ),
        ),
      ],
    );
  }
}
