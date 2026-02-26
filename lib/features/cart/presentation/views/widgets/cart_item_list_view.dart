import 'package:burger_app/features/cart/presentation/views/widgets/cart_item.dart';
import 'package:flutter/material.dart';

class CartItemListView extends StatelessWidget {
  const CartItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: CartItem(index: index),
        );
      },
    );
  }
}
