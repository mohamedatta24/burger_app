  import 'package:burger_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios, color: AppColors.white),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
