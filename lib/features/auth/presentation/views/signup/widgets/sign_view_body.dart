import 'package:burger_app/core/theme/app_colors.dart';
import 'package:burger_app/core/widgets/custom_button.dart';
import 'package:burger_app/features/auth/presentation/views/login/widgets/custom_text_form_field.dart';
import 'package:burger_app/features/auth/presentation/views/login/widgets/password_text_form_field.dart';
import 'package:burger_app/features/auth/presentation/views/signup/widgets/already_have_an_account.dart';
import 'package:flutter/material.dart';

class SignViewBody extends StatelessWidget {
  const SignViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50.0),
            const Text(
              "Create Account",
              style: TextStyle(
                fontSize: 28.0,
                color: AppColors.white,
                fontFamily: "Rubik Dirt",
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
              style: TextStyle(fontSize: 14.0, color: AppColors.grey),
            ),
            const SizedBox(height: 55.0),
            const CustomTextFormField(
              text: "Name",
              suffixIcon: Icon(Icons.person),
            ),
            const SizedBox(height: 16.0),
            const CustomTextFormField(
              text: "Email",
              suffixIcon: Icon(Icons.email),
            ),
            const SizedBox(height: 16.0),
            const PasswordTextFormField(),
            const SizedBox(height: 32.0),
            const CustomButton(text: "Signup"),
            const SizedBox(height: 16.0),
            AlreadyHaveAnAccount(
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
