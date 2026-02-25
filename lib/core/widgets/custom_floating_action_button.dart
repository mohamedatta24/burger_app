import 'package:burger_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
    this.onPressed,
    required this.icon,
  });

  final void Function()? onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(50.0),
      ),
      onPressed: onPressed,
      mini: true,
      backgroundColor: AppColors.background,
      child: Icon(icon, color: AppColors.white, size: 16.0),
    );
  }
}
