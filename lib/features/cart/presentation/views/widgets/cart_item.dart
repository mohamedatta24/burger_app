import 'package:burger_app/core/utils/app_colors.dart';
import 'package:burger_app/core/utils/app_images.dart';
import 'package:burger_app/core/widgets/custom_button.dart';
import 'package:burger_app/core/widgets/quantity_counter.dart';
import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  const CartItem({super.key, required this.index});
  final int index;
  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 16.0,
        top: 8.0,
        bottom: 16.0,
        right: 16.0,
      ),
      decoration: BoxDecoration(
        color: AppColors.backgroundDark,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Row(
        children: [
          Column(
            children: [
              Image.asset(Assets.imagesCard2),
              const Text(
                "Cheeseburger\nWendy's Burger",
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              children: [
                QuantityCounter(
                  heroTagOnAdd: "add_btn_${widget.index}",
                  heroTagOnRemove: "remove_btn_${widget.index}",
                  colorButton: AppColors.backgroundDark,
                  quantity: quantity,
                  onAdd: () {
                    setState(() {
                      quantity++;
                    });
                  },
                  onRemove: () {
                    setState(() {
                      if (quantity > 1) quantity--;
                    });
                  },
                  backgroundColor: AppColors.background,
                ),
                const SizedBox(height: 10.0),
                CustomButton(
                  borderRadius: BorderRadius.circular(50.0),
                  text: 'Remove',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
