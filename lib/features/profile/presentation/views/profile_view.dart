import 'package:burger_app/core/services/dependency_injection.dart';
import 'package:burger_app/core/utils/app_colors.dart';
import 'package:burger_app/features/auth/presentation/getprofiledata_cubits/getprofiledata_cubit.dart';
import 'package:burger_app/features/profile/presentation/views/widgets/profile_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<GetprofiledataCubit>(),
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings, color: AppColors.grey),
            ),
          ],
        ),
        body: SafeArea(child: const ProfileViewBody()),
      ),
    );
  }
}
