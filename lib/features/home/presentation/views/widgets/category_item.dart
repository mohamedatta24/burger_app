import 'package:burger_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.title, required this.isActive});

  final String title;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      width: 120,
      height: 40,
      decoration: BoxDecoration(
        color: isActive ? AppColors.orange : const Color(0xff1B1C1F),
        borderRadius: BorderRadius.circular(7.0),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.white,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
