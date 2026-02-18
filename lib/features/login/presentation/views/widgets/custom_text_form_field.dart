import 'package:burger_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.suffixIcon,
  });
  final String hintText;
  final IconData suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(),
        suffixIcon: Icon(suffixIcon),
        border: buildOutlineInputBorder(),
        disabledBorder: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(7.0),
      borderSide: const BorderSide(color: AppColors.white, width: 1.5),
    );
  }
}
