import 'package:burger_app/core/widgets/custom_button.dart';
import 'package:burger_app/core/widgets/cutom_text.dart';
import 'package:burger_app/features/auth/presentation/login_cubits/login_cubit.dart';
import 'package:burger_app/features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:burger_app/features/auth/presentation/views/widgets/dont_have_an_account.dart';
import 'package:burger_app/features/auth/presentation/views/widgets/forgot_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),
            const CustomText(text: "Login"),
            const SizedBox(height: 100),
            CustomTextFormField(
              controller: emailController,
              hintText: "Email",
              suffixIcon: Icons.email,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormField(
              controller: passwordController,
              hintText: "Password",
              suffixIcon: Icons.visibility_sharp,
            ),
            const SizedBox(height: 10.0),
            const ForgotPassword(),
            const SizedBox(height: 32.0),
            CustomButton(
              text: "Login",
              onTap: () {
                if (formKey.currentState!.validate()) {
                  context.read<LoginCubit>().login(
                    email: emailController.text,
                    password: passwordController.text,
                  );
                } else {
                  setState(() {
                    autovalidateMode = AutovalidateMode.always;
                  });
                }
              },
            ),
            const SizedBox(height: 16.0),
            const DontHaveAnAccount(),
          ],
        ),
      ),
    );
  }
}
