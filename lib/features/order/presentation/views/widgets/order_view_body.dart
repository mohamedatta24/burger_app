import 'package:burger_app/features/order/presentation/views/widgets/order_item_list_view.dart';
import 'package:flutter/material.dart';

class OrderViewBody extends StatelessWidget {
  const OrderViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(children: [const Expanded(child: OrderItemListView())]),
    );
  }
}
