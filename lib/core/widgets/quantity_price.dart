import 'package:burger_app/core/utils/app_colors.dart';
import 'package:burger_app/core/widgets/custom_floating_action_button.dart';
import 'package:flutter/material.dart';

class QuantityPrice extends StatelessWidget {
  const QuantityPrice({
    super.key,
    this.onRemove,
    this.onAdd,
    required this.quantity,
  });

  final void Function()? onRemove;
  final void Function()? onAdd;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
          decoration: BoxDecoration(
            color: AppColors.backgroundDark,
            borderRadius: BorderRadius.circular(50.0),
          ),
          child: Row(
            children: [
              CustomFloatingActionButton(
                icon: Icons.remove,
                onPressed: onRemove,
              ),
              const SizedBox(width: 32.0),
              Text(
                quantity.toString(),
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 32.0),
              CustomFloatingActionButton(icon: Icons.add, onPressed: onAdd),
            ],
          ),
        ),
        const Spacer(),
        Column(
          children: [
            const Text(
              "Total Price",
              style: TextStyle(
                color: AppColors.grey,
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4.0),
            const Text(
              "\$ 5.99",
              style: TextStyle(
                color: AppColors.white,
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
