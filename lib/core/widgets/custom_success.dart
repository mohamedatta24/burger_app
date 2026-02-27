import 'package:burger_app/core/utils/app_colors.dart';
import 'package:burger_app/core/utils/app_images.dart';
import 'package:burger_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSuccess extends StatelessWidget {
  const CustomSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(32.0),
              decoration: BoxDecoration(
                color: AppColors.backgroundDark,
                borderRadius: BorderRadius.circular(24.0),
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50.0,
                    backgroundColor: const Color(0xff08431D),
                    child: SvgPicture.asset(Assets.imagesSuccess),
                  ),
                  const SizedBox(height: 32.0),
                  Text(
                    "Success !",
                    style: TextStyle(
                      fontSize: 24.0,
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    textAlign: TextAlign.center,
                    "Your payment was successful.\nA receipt for this purchase has\nbeen sent to your email.",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey,
                    ),
                  ),
                  const SizedBox(height: 32.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: CustomButton(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      coloText: AppColors.white,
                      text: "Go Back",
                      color: const Color(0xff08431D),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
