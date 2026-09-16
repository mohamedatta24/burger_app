import 'package:burger_app/features/home/presentation/views/widgets/custom_price.dart';
import 'package:burger_app/features/home/presentation/views/widgets/custom_quantity.dart';
import 'package:flutter/material.dart';

class CustomQuantityAndPrice extends StatelessWidget {
  const CustomQuantityAndPrice({super.key, required this.price});

  final String price;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CustomQuantity(),
        CustomPrice(price: price),
      ],
    );
  }
}
