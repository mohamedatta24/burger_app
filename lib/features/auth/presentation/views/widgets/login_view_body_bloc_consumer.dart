import 'package:burger_app/features/auth/presentation/login_cubits/login_cubit.dart';
import 'package:burger_app/features/auth/presentation/views/widgets/login_view_body.dart';
import 'package:burger_app/features/home/presentation/views/widgets/main_bottom_nav_bar.dart';
import 'package:burger_app/features/profile/presentation/views/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginViewBodyBlocConsumer extends StatelessWidget {
  const LoginViewBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text("Successfully")));
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const MainBottomNavBar();
              },
            ),
          );
        }

        if (state is LoginFailure) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.errorMessage)));
        }
      },
      builder: (context, state) {
        return Stack(
          children: [
            const LoginViewBody(),
            if (state is LoginLoading)
              Container(
                color: Colors.black.withOpacity(0.5),
                child: const Center(child: CircularProgressIndicator()),
              ),
          ],
        );
      },
    );
  }
}
