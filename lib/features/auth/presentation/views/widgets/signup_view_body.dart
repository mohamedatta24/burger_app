import 'package:burger_app/core/widgets/custom_button.dart';
import 'package:burger_app/core/widgets/cutom_text.dart';
import 'package:burger_app/features/auth/presentation/signup/signup_cubit.dart';
import 'package:burger_app/features/auth/presentation/views/widgets/already_have_an_account.dart';
import 'package:burger_app/features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  TextEditingController nameController = TextEditingController();
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
          children: [
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),
            const CustomText(text: "Signup"),
            const SizedBox(height: 100),
            CustomTextFormField(
              controller: nameController,
              hintText: "Name",
              suffixIcon: Icons.person,
            ),
            const SizedBox(height: 16.0),
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
            const SizedBox(height: 32.0),
            CustomButton(
              text: "Signup",
              onTap: () {
                if (formKey.currentState!.validate()) {
                  context.read<SignupCubit>().signup(
                    name: nameController.text,
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
            const AlreadyHaveAnAccount(),
          ],
        ),
      ),
    );
  }
}
