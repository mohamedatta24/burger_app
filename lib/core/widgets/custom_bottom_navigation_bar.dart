import 'package:burger_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
    required this.currentIndex,
    this.onTap,
  });

  final int currentIndex;
  final void Function(int)? onTap;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color(0xff1B1C1F),
      elevation: 0.0,
      fixedColor: AppColors.orange,
      selectedLabelStyle: TextStyle(
        color: AppColors.orange,
        fontWeight: FontWeight.bold,
        fontSize: 14.0,
      ),
      unselectedItemColor: AppColors.grey,
      onTap: onTap,
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      enableFeedback: false,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
        BottomNavigationBarItem(
          icon: Icon(Icons.receipt_long_sharp),
          label: "Order",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      ],
    );
  }
}
