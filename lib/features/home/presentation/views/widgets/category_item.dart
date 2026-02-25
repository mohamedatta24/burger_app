import 'package:burger_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.categoryName,
    required this.inActive,
  });

  final String categoryName;
  final bool inActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      height: 40.0,
      width: 120.0,
      decoration: BoxDecoration(
        color: inActive ? AppColors.orange : AppColors.backgroundDark,
        borderRadius: BorderRadius.circular(7.0),
      ),
      child: Center(
        child: Text(
          categoryName,
          style: TextStyle(
            color: AppColors.white,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
