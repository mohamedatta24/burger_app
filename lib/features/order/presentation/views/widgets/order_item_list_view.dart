import 'package:burger_app/features/order/presentation/views/widgets/order_item.dart';
import 'package:flutter/material.dart';

class OrderItemListView extends StatelessWidget {
  const OrderItemListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: const OrderItem(),
        );
      },
    );
  }
}