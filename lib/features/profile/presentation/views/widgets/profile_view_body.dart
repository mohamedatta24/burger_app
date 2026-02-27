import 'package:burger_app/core/enum/payment_method.dart';
import 'package:burger_app/core/utils/app_colors.dart';
import 'package:burger_app/core/utils/app_images.dart';
import 'package:burger_app/core/widgets/custom_button.dart';
import 'package:burger_app/core/widgets/paymen_button.dart';
import 'package:burger_app/features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ProfileViewBody extends StatefulWidget {
  const ProfileViewBody({super.key});

  @override
  State<ProfileViewBody> createState() => _ProfileViewBodyState();
}

class _ProfileViewBodyState extends State<ProfileViewBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50.0,
                    child: Image.asset(Assets.imagesUserPhoto),
                  ),
                  const SizedBox(height: 50.0),
                  const CustomTextFormField(
                    hintText: "Name",
                    suffixIcon: Icons.person,
                  ),
                  const SizedBox(height: 16.0),
                  const CustomTextFormField(
                    hintText: "Email",
                    suffixIcon: Icons.email,
                  ),
                  const SizedBox(height: 16.0),
                  const CustomTextFormField(
                    hintText: "Delivery Address",
                    suffixIcon: Icons.delivery_dining_sharp,
                  ),
                  const SizedBox(height: 16.0),
                  const CustomTextFormField(
                    hintText: "Visa",
                    suffixIcon: Icons.money,
                  ),
                  const SizedBox(height: 32.0),
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
                ],
              ),
            ),

            Row(
              children: [
                const Expanded(child: CustomButton(text: "Edit Profile")),
                const SizedBox(width: 32.0),
                const Expanded(child: CustomButton(text: "Log out")),
              ],
            ),
            const SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}
