import 'package:burger_app/core/utils/app_colors.dart';
import 'package:burger_app/core/widgets/custom_button.dart';
import 'package:burger_app/core/widgets/quantity_counter.dart';

import 'package:burger_app/features/cart/domain/entities/cart_item_entity.dart';
import 'package:burger_app/features/cart/presentation/cart_cubits/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartItem extends StatefulWidget {
  const CartItem({super.key, required this.itmes, required this.index});

  final List<CartItemEntity> itmes;
  final int index;
  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    final item = widget.itmes[widget.index];
    return Container(
      padding: const EdgeInsets.only(
        left: 16.0,
        top: 8.0,
        bottom: 16.0,
        right: 16.0,
      ),
      decoration: BoxDecoration(
        color: AppColors.backgroundDark,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                item.image,
                fit: BoxFit.fill,
                width: 100,
                height: 100,
              ),
              Text(
                item.name,
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                item.price,
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              children: [
                QuantityCounter(
                  heroTagOnAdd: "add_btn_${widget.index}",
                  heroTagOnRemove: "remove_btn_${widget.index}",
                  colorButton: AppColors.backgroundDark,
                  quantity: widget.itmes[widget.index].quantity,
                  onAdd: () {
                    setState(() {
                      quantity++;
                    });
                  },
                  onRemove: () {
                    setState(() {
                      if (quantity > 1) quantity--;
                    });
                  },
                  backgroundColor: AppColors.background,
                ),
                const SizedBox(height: 10.0),
                CustomButton(
                  borderRadius: BorderRadius.circular(50.0),
                  text: 'Remove',
                  onTap: () {
                    context.read<CartCubit>().removeItem(
                      widget.itmes[widget.index].itemId,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
