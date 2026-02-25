import 'package:burger_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: AppColors.white,
      style: const TextStyle(
        color: AppColors.white,
        fontWeight: FontWeight.bold,
      ),
      decoration: InputDecoration(
        hintText: "Search",
        prefixIcon: const Icon(Icons.search),
        border: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        disabledBorder: buildOutlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(7.0),
      borderSide: const BorderSide(color: AppColors.backgroundDark, width: 2.0),
    );
  }
}
