import 'package:burger_app/core/theme/app_colors.dart';
import 'package:burger_app/core/widgets/custom_floating_action_button.dart';
import 'package:flutter/material.dart';

class CustomQuantity extends StatelessWidget {
  const CustomQuantity({super.key, this.backgroundColor, this.colorButton});

  final Color? backgroundColor;
  final Color? colorButton;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        color: backgroundColor ?? const Color(0xff1B1C1F),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomFloatingActionButton(colorButton: colorButton, icon: Icons.add),
          SizedBox(width: 16.0),
          Text(
            "2",
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: AppColors.white,
            ),
          ),
          SizedBox(width: 16.0),
          CustomFloatingActionButton(
            colorButton: colorButton,
            icon: Icons.remove,
          ),
        ],
      ),
    );
  }
}
