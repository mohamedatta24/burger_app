import 'package:burger_app/core/widgets/custom_button.dart';
import 'package:burger_app/features/cart/presentation/views/widgets/cart_item_list_view.dart';
import 'package:burger_app/features/home/presentation/views/widgets/custom_price.dart';
import 'package:flutter/material.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const Expanded(child: CartItemListView()),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              children: [
                Expanded(child: CustomButton(text: "Checkout")),
                SizedBox(width: 32.0),
                CustomPrice(price: "\$18.00"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
