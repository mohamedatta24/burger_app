import 'package:burger_app/core/enum/payment_method.dart';
import 'package:burger_app/core/utils/app_colors.dart';
import 'package:burger_app/core/utils/app_images.dart';
import 'package:burger_app/core/widgets/paymen_button.dart';
import 'package:burger_app/features/Checkout/presentation/views/widgets/save_card.dart';
import 'package:flutter/material.dart';

class PaymenButtonsSection extends StatefulWidget {
  const PaymenButtonsSection({super.key});

  @override
  State<PaymenButtonsSection> createState() => _PaymenButtonsSectionState();
}

class _PaymenButtonsSectionState extends State<PaymenButtonsSection> {
  PaymentMethod selectedMethod = PaymentMethod.cash;
  bool saveCard = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Payment methods",
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: AppColors.white,
          ),
        ),
        const SizedBox(height: 32.0),
        PaymenButton(
          value: PaymentMethod.cash,
          groupValue: selectedMethod,
          image: Assets.imagesDollar,
          title: "Cash on Delivery",
          onChanged: (value) {
            setState(() {
              selectedMethod = value!;
            });
          },
        ),
        const SizedBox(height: 16.0),
        PaymenButton(
          value: PaymentMethod.card,
          groupValue: selectedMethod,
          image: Assets.imagesVisa,
          title: "Debit Card",
          subtitle: Text(
            "3566 **** **** 0505",
            style: TextStyle(
              color: AppColors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          onChanged: (value) {
            setState(() {
              selectedMethod = value!;
            });
          },
        ),
        const SizedBox(height: 10.0),
        SaveCard(
          value: saveCard,
          onChanged: (value) {
            setState(() {
              saveCard = value!;
            });
          },
        ),
      ],
    );
  }
}
