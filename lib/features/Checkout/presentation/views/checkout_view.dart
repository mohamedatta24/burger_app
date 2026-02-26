import 'package:burger_app/core/helper/app_bar.dart';
import 'package:burger_app/features/Checkout/presentation/views/widgets/checkout_view_body.dart';
import 'package:flutter/material.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SafeArea(child: const CheckoutViewBody()),
    );
  }
}
