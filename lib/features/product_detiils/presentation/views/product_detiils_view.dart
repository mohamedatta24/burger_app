import 'package:burger_app/core/utils/app_colors.dart';
import 'package:burger_app/core/widgets/custom_button.dart';
import 'package:burger_app/core/widgets/quantity_price.dart';
import 'package:burger_app/features/product_detiils/presentation/views/widgets/product_detiils_item.dart';
import 'package:flutter/material.dart';

class ProductDetiilsView extends StatelessWidget {
  const ProductDetiilsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: AppColors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              const ProductDetiilsItem(),
              const SizedBox(height: 16.0),
              const Spacer(),
              QuantityPrice(onRemove: () {}, onAdd: () {}, quantity: 1),
              const SizedBox(height: 16.0),
              const CustomButton(text: "Add To Cart"),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            ],
          ),
        ),
      ),
    );
  }
}
