import 'package:burger_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class ProductDetiilsItem extends StatelessWidget {
  const ProductDetiilsItem({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(image, fit: BoxFit.fill, width: 240.0, height: 240.0),
        SizedBox(height: 16.0),
        Text(
          title,
          style: const TextStyle(
            color: AppColors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16.0),
        Text(
          textAlign: TextAlign.center,
          subTitle,
          style: const TextStyle(
            height: 1.5,
            color: AppColors.grey,
            fontSize: 14.0,
          ),
        ),
      ],
    );
  }
}
