import 'package:burger_app/features/Checkout/models/checkout_item_model.dart';
import 'package:burger_app/features/Checkout/presentation/views/widgets/checkout_item.dart';
import 'package:burger_app/features/Checkout/presentation/views/widgets/checkout_item_list_view.dart';
import 'package:flutter/material.dart';

class CheckoutItemSection extends StatelessWidget {
  const CheckoutItemSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CheckoutItemListView(),
        const SizedBox(height: 16.0),
        const CheckoutItem(
          checkoutItemModel: CheckoutItemModel(
            title: "Total:",
            price: "\$18.00",
            color: Color(0xff08431D),
          ),
        ),
        const SizedBox(height: 10.0),
        const CheckoutItem(
          checkoutItemModel: CheckoutItemModel(
            title: "Delivery time:",
            price: "15 - 30 mins",
          ),
        ),
      ],
    );
  }
}
