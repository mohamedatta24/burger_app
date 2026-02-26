import 'package:burger_app/core/widgets/custom_button.dart';
import 'package:burger_app/core/widgets/cutom_text.dart';
import 'package:burger_app/core/widgets/total_price.dart';
import 'package:burger_app/features/Checkout/presentation/views/widgets/checkout_item_section.dart';
import 'package:burger_app/features/Checkout/presentation/views/widgets/paymen_buttons_section.dart';
import 'package:flutter/material.dart';

class CheckoutViewBody extends StatelessWidget {
  const CheckoutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const CustomText(text: "Order"),
          const SizedBox(height: 16.0),
          const CheckoutItemSection(),
          const SizedBox(height: 32.0),
          const PaymenButtonsSection(),
          const Spacer(),
          Row(
            children: [
              Expanded(
                child: CustomButton(text: "Pay Now", onTap: () {}),
              ),
              const SizedBox(width: 50.0),
              const TotalPrice(),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
        ],
      ),
    );
  }
}
