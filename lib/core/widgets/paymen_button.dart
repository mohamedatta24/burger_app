import 'package:burger_app/core/enum/payment_method.dart';
import 'package:burger_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class PaymenButton extends StatelessWidget {
  const PaymenButton({
    super.key,
    required this.image,
    required this.title,
    required this.onChanged,
    this.subtitle,
    required this.value,
    required this.groupValue,
  });

  final String image;
  final String title;
  final Widget? subtitle;
  final PaymentMethod value;
  final PaymentMethod groupValue;
  final ValueChanged<PaymentMethod?> onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),
      decoration: BoxDecoration(
        color: AppColors.backgroundDark,
        borderRadius: BorderRadius.circular(7.0),
      ),
      child: ListTile(
        minVerticalPadding: 0.0,
        contentPadding: EdgeInsets.zero,
        leading: Image.asset(image),
        title: Text(
          title,
          style: TextStyle(
            color: AppColors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: Radio<PaymentMethod>(
          activeColor: AppColors.grey,
          onChanged: onChanged,
          value: value,
          groupValue: groupValue,
        ),
        subtitle: subtitle,
      ),
    );
  }
}
