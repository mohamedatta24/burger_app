import 'package:burger_app/core/widgets/custom_bottom_navigation_bar.dart';
import 'package:burger_app/features/cart/presentation/views/cart_view.dart';
import 'package:burger_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:burger_app/features/order/presentation/views/order_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Widget> views = const [
    HomeViewBody(),
    CartView(),
    OrderView(),
    SizedBox(
      child: Center(
        child: Text(
          "Shawali",
          style: TextStyle(fontSize: 40, color: Colors.orange),
        ),
      ),
    ),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
      body: SafeArea(child: views[currentIndex]),
    );
  }
}
