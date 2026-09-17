import 'package:burger_app/core/router/router_name.dart';
import 'package:burger_app/core/theme/app_colors.dart';
import 'package:burger_app/core/utils/app_images.dart';
import 'package:burger_app/core/widgets/custom_button.dart';
import 'package:burger_app/features/auth/presentation/views/login/widgets/custom_forgot_password.dart';
import 'package:burger_app/features/auth/presentation/views/login/widgets/custom_social_button.dart';
import 'package:burger_app/features/auth/presentation/views/login/widgets/custom_text_form_field.dart';
import 'package:burger_app/features/auth/presentation/views/login/widgets/dont_have_an_account.dart';
import 'package:burger_app/features/auth/presentation/views/login/widgets/password_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50.0),
            const Text(
              "Welcome Back",
              style: TextStyle(
                fontSize: 28.0,
                color: AppColors.white,
                fontFamily: "Rubik Dirt",
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
              style: TextStyle(fontSize: 14.0, color: AppColors.grey),
            ),
            const SizedBox(height: 55),
            const CustomTextFormField(
              text: "Email",
              suffixIcon: Icon(Icons.email),
            ),
            const SizedBox(height: 16.0),
            PasswordTextFormField(),
            const SizedBox(height: 8.0),
            CustomForgotPassword(onTap: () {}),
            const SizedBox(height: 32.0),
            CustomButton(
              text: "Login",
              onTap: () {
                Navigator.pushReplacementNamed(context, RouterName.home);
              },
            ),
            const SizedBox(height: 16.0),
            DontHaveAnAccount(
              onTap: () {
                Navigator.pushNamed(context, RouterName.signup);
              },
            ),
            const SizedBox(height: 32.0),
            CustomSocialButton(
              onTap: () {},
              image: Assets.imagesGoogle,
              title: "Sign in with Google",
            ),
            const SizedBox(height: 16.0),
            CustomSocialButton(
              onTap: () {},
              image: Assets.imagesFacebook,
              title: "Sign in with Facebook",
            ),
            const SizedBox(height: 16.0),
            CustomSocialButton(
              onTap: () {},
              image: Assets.imagesApple,
              title: "Sign in with Apple",
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),
          ],
        ),
      ),
    );
  }
}
