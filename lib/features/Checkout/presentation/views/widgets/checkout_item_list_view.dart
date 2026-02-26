import 'package:burger_app/features/Checkout/models/checkout_item_model.dart';
import 'package:burger_app/features/Checkout/presentation/views/widgets/checkout_item.dart';
import 'package:flutter/material.dart';

class CheckoutItemListView extends StatelessWidget {
  const CheckoutItemListView({super.key});

  final List<CheckoutItemModel> items = const [
    CheckoutItemModel(title: "Order", price: "\$16.00"),
    CheckoutItemModel(title: "Texes", price: "\$0.5"),
    CheckoutItemModel(title: "Delivery fees", price: "\$1.5"),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(items.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: CheckoutItem(checkoutItemModel: items[index]),
        );
      }),
    );
  }
}
