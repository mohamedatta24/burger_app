import 'package:burger_app/features/cart/presentation/views/widgets/cart_item.dart';
import 'package:flutter/material.dart';

class CartItemListView extends StatelessWidget {
  const CartItemListView({super.key});

  final List<Widget> items = const [
    CartItem(),
    CartItem(),
    CartItem(),
    CartItem(),
    CartItem(),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      child: Column(
        children: items
            .map(
              (e) => Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: const CartItem(),
              ),
            )
            .toList(),
      ),
    );
  }
}
