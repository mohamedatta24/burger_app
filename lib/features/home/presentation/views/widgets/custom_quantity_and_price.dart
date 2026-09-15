import 'package:burger_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomQuantityAndPrice extends StatelessWidget {
  const CustomQuantityAndPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color: const Color(0xff1B1C1F),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton(
                elevation: 0.0,
                backgroundColor: AppColors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(50.0),
                ),
                mini: true,
                onPressed: () {},
                child: Icon(Icons.add, color: AppColors.white),
              ),
              SizedBox(width: 16.0),
              Text(
                "2",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: AppColors.white,
                ),
              ),
              SizedBox(width: 16.0),
              FloatingActionButton(
                elevation: 0.0,
                backgroundColor: AppColors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(50.0),
                ),
                mini: true,
                onPressed: () {},
                child: Icon(Icons.remove, color: AppColors.white),
              ),
            ],
          ),
        ),
        Column(
          children: const [
            Text(
              "Total Price",
              style: TextStyle(
                fontSize: 12.0,
                color: AppColors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "\$18.00",
              style: TextStyle(
                fontSize: 24.0,
                color: AppColors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
