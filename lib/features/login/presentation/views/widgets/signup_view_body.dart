import 'package:burger_app/core/widgets/custom_button.dart';
import 'package:burger_app/core/widgets/cutom_text.dart';
import 'package:burger_app/features/login/presentation/views/widgets/already_have_an_account.dart';
import 'package:burger_app/features/login/presentation/views/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),
          const CustomText(text: "Signup"),
          const SizedBox(height: 100),
          const CustomTextFormField(hintText: "Name", suffixIcon: Icons.person),
          const SizedBox(height: 16.0),
          const CustomTextFormField(hintText: "Email", suffixIcon: Icons.email),
          const SizedBox(height: 16.0),
          const CustomTextFormField(
            hintText: "Password",
            suffixIcon: Icons.visibility_sharp,
          ),
          const SizedBox(height: 32.0),
          const CustomButton(text: "Signup"),
          const SizedBox(height: 16.0),
          const AlreadyHaveAnAccount(),
        ],
      ),
    );
  }
}
