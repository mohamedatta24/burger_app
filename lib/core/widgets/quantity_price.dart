import 'package:burger_app/core/widgets/quantity_counter.dart';
import 'package:burger_app/core/widgets/total_price.dart';
import 'package:flutter/material.dart';

class QuantityPrice extends StatelessWidget {
  const QuantityPrice({
    super.key,
    this.onRemove,
    this.onAdd,
    required this.quantity, required this.price,
  });

  final void Function()? onRemove;
  final void Function()? onAdd;
  final int quantity;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        QuantityCounter(onRemove: onRemove, quantity: quantity, onAdd: onAdd),
        const Spacer(),
        TotalPrice(
          price: price,
        ),
      ],
    );
  }
}
