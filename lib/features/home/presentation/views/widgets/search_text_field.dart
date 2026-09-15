import 'package:burger_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: AppColors.grey,
      style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.white),
      decoration: InputDecoration(
        hintText: "Search",
        hintStyle: TextStyle(
          color: AppColors.grey,
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
        ),
        prefixIcon: Icon(Icons.search),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        border: buildOutlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(7.0),
      borderSide: BorderSide(width: 2, color: AppColors.grey),
    );
  }
}
