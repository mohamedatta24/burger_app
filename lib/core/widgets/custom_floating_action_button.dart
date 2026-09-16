import 'package:burger_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
    this.heroTag,
    this.colorButton, required this.icon,
  
  });

  final String? heroTag;
  final Color? colorButton;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: heroTag,
      elevation: 0.0,
      backgroundColor: colorButton ?? AppColors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(50.0),
      ),
      mini: true,
      onPressed: () {},
      child: Icon(icon, color: AppColors.white),
    );
  }
}
