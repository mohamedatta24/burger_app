import 'package:burger_app/core/utils/app_colors.dart';
import 'package:burger_app/core/widgets/custom_floating_action_button.dart';
import 'package:flutter/material.dart';

class QuantityCounter extends StatelessWidget {
  const QuantityCounter({
    super.key,
    required this.onRemove,
    required this.quantity,
    required this.onAdd,
    this.backgroundColor,
    this.colorButton,
  });

  final void Function()? onRemove;
  final int quantity;
  final void Function()? onAdd;
  final Color? backgroundColor;
  final Color? colorButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.backgroundDark,
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomFloatingActionButton(
            heroTag: "remove",
            colorButton: colorButton ?? AppColors.background,
            icon: Icons.remove,
            onPressed: onRemove,
          ),
          const SizedBox(width: 16.0),
          Text(
            quantity.toString(),
            style: TextStyle(
              color: AppColors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 16.0),
          CustomFloatingActionButton(
            heroTag: "add",
            colorButton: colorButton ?? AppColors.background,
            icon: Icons.add,
            onPressed: onAdd,
          ),
        ],
      ),
    );
  }
}
