import 'package:burger_app/core/utils/app_colors.dart';
import 'package:burger_app/features/Checkout/models/checkout_item_model.dart';
import 'package:flutter/material.dart';

class CheckoutItem extends StatelessWidget {
  const CheckoutItem({super.key, required this.checkoutItemModel});

  final CheckoutItemModel checkoutItemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: checkoutItemModel.color ?? AppColors.backgroundDark,
        borderRadius: BorderRadius.circular(7.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            checkoutItemModel.title,
            style: TextStyle(
              fontSize: 18.0,
              color: AppColors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            checkoutItemModel.price,
            style: TextStyle(
              fontSize: 18.0,
              color: AppColors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
