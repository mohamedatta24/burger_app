import 'package:burger_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
    this.onPressed,
    required this.icon,
    required this.colorButton,
    this.heroTag,
  });

  final void Function()? onPressed;
  final IconData icon;

  final Color colorButton;
  final Object? heroTag;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: heroTag,
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(50.0),
      ),
      onPressed: onPressed,
      mini: true,
      backgroundColor: colorButton,
      child: Icon(icon, color: AppColors.white, size: 16.0),
    );
  }
}
