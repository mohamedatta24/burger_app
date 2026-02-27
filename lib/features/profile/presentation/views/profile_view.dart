import 'package:burger_app/core/utils/app_colors.dart';
import 'package:burger_app/features/profile/presentation/views/widgets/profile_view_body.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings, color: AppColors.grey),
          ),
        ],
      ),
      body: SafeArea(child: const ProfileViewBody()),
    );
  }
}
