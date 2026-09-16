import 'package:burger_app/core/theme/app_colors.dart';
import 'package:burger_app/core/widgets/custom_button.dart';
import 'package:burger_app/features/home/presentation/views/widgets/custom_quantity_and_price.dart';
import 'package:flutter/material.dart';

class ProductDetils extends StatelessWidget {
  const ProductDetils({
    super.key,
    required this.image,
    required this.title,
    required this.price,
  });

  final String image;
  final String title;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, color: AppColors.white, size: 28.0),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: [
                    Column(
                      children: [
                        Center(
                          child: ConstrainedBox(
                            constraints: BoxConstraints(maxHeight: 250),
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: Image.asset(image),
                            ),
                          ),
                        ),
                        Text(
                          title,
                          style: const TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                            color: AppColors.white,
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        const Text(
                          textAlign: TextAlign.center,
                          "Where fresh ingredients and melted cheese come together for the ultimate burger experience, delivering flavor that keeps you coming back for more",
                          style: TextStyle(
                            height: 1.5,
                            color: AppColors.grey,
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                    const Expanded(child: SizedBox(height: 32.0)),
                    CustomQuantityAndPrice(price: price),
                    const SizedBox(height: 16.0),
                    const CustomButton(text: "Add To Cart"),
                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
