import 'package:burger_app/core/utils/app_colors.dart';

import 'package:burger_app/features/home/domain/entities/product_entity.dart';
import 'package:burger_app/features/product_detiils/presentation/views/product_detiils_view.dart';
import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key, required this.productEntity});

  final ProductEntity productEntity;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProductDetiilsView(
            productId: productEntity.id,
            image: productEntity.image,
            title: productEntity.name,
            subTitle: productEntity.description!,
            price: productEntity.price,
          )),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: AppColors.backgroundDark,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 125, maxHeight: 125),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.network(
                    productEntity.image,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              productEntity.name,
              style: const TextStyle(
                color: AppColors.white,
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            Row(
              children: [
                const Icon(Icons.star, color: AppColors.orange, size: 18.0),
                const Icon(Icons.star, color: AppColors.orange, size: 18.0),
                const SizedBox(width: 5.0),
                Text(
                  productEntity.rating,
                  style: const TextStyle(
                    color: AppColors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                Text(
                  "\$ ${productEntity.price}",
                  style: const TextStyle(
                    color: AppColors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
