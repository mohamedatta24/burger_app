import 'package:burger_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.controller,
    required this.text,
    this.suffixIcon,
    this.obscureText,
  });

  final TextEditingController? controller;
  final String text;
  final Widget? suffixIcon;
  final bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.grey,
      style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.white),
      obscureText: obscureText ?? false,
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        hintText: text,
        hintStyle: TextStyle(
          color: AppColors.grey,
          fontWeight: FontWeight.w400,
        ),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        border: buildOutlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(7.0),
      borderSide: BorderSide(width: 1.5, color: AppColors.grey),
    );
  }
}
