import 'package:burger_app/core/utils/app_colors.dart';
import 'package:burger_app/features/cart/presentation/views/cart_view.dart';
import 'package:burger_app/features/home/presentation/views/home_view.dart';
import 'package:burger_app/features/order/presentation/views/order_view.dart';
import 'package:burger_app/features/profile/presentation/views/profile_view.dart';
import 'package:flutter/material.dart';

class MainBottomNavBar extends StatefulWidget {
  const MainBottomNavBar({super.key});

  @override
  State<MainBottomNavBar> createState() => _MainBottomNavBarState();
}

class _MainBottomNavBarState extends State<MainBottomNavBar> {
  List<Widget> views = [
    const HomeView(),
    const CartView(),
    const OrderView(),
    const ProfileView(),
  ];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: views[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.orange,
        unselectedItemColor: AppColors.grey,
        unselectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          color: AppColors.white,
        ),
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        backgroundColor: AppColors.backgroundDark,
        elevation: 0.0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Orders'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
