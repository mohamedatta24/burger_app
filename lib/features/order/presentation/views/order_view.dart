import 'package:burger_app/features/order/presentation/views/widgets/order_view_body.dart';
import 'package:flutter/material.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: const OrderViewBody()));
  }
}
