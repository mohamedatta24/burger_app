import 'package:burger_app/core/widgets/custom_button.dart';
import 'package:burger_app/core/widgets/total_price.dart';
import 'package:burger_app/features/Checkout/presentation/views/checkout_view.dart';
import 'package:burger_app/features/cart/presentation/views/widgets/cart_item_list_view.dart';
import 'package:flutter/material.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          const Expanded(child: CartItemListView()),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              children: [
                Expanded(
                  child: CustomButton(
                    text: "Checkout",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const CheckoutView();
                          },
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(width: 50.0),
                const TotalPrice(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
