import 'package:burger_app/core/helper/app_bar.dart';
import 'package:burger_app/core/services/dependency_injection.dart';
import 'package:burger_app/core/utils/app_colors.dart';
import 'package:burger_app/core/widgets/custom_button.dart';
import 'package:burger_app/core/widgets/quantity_price.dart';
import 'package:burger_app/features/cart/domain/entities/cart_entity.dart';
import 'package:burger_app/features/cart/presentation/cart_cubits/cart_cubit.dart';
import 'package:burger_app/features/product_detiils/presentation/views/widgets/product_detiils_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetiilsView extends StatefulWidget {
  const ProductDetiilsView({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.price,
    required this.productId,
  });

  final int productId;
  final String image;
  final String title;
  final String subTitle;
  final String price;

  @override
  State<ProductDetiilsView> createState() => _ProductDetiilsViewState();
}

class _ProductDetiilsViewState extends State<ProductDetiilsView> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CartCubit>(),
      child: Builder(
        builder: (context) {
          return BlocConsumer<CartCubit, CartState>(
            listener: (context, state) {
              if (state is CartSuccess) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Product added to cart!")),
                );
              } else if (state is CartFailure) {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text(state.errorMessage)));
              }
            },
            builder: (context, state) {
              return Scaffold(
                appBar: buildAppBar(context),
                body: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: [
                        ProductDetiilsItem(
                          image: widget.image,
                          title: widget.title,
                          subTitle: widget.subTitle,
                        ),
                        const SizedBox(height: 16.0),

                        const Spacer(),
                        QuantityPrice(
                          onRemove: () {
                            if (quantity > 1) {
                              setState(() {
                                quantity--;
                              });
                            }
                          },
                          onAdd: () {
                            setState(() {
                              quantity++;
                            });
                          },
                          quantity: quantity,
                          price: widget.price,
                        ),
                        const SizedBox(height: 16.0),

                        Row(
                          children: [
                            Expanded(
                              child: CustomButton(
                                text: "Add To Cart",
                                onTap: () {
                                  final cartItem = CartEntity(
                                    productId: widget.productId,
                                    quantity: quantity,
                                  );
                                  context.read<CartCubit>().addToCart([
                                    cartItem,
                                  ]);
                                },
                              ),
                            ),
                            if (state is CartLoading)
                              SizedBox(
                                width: 100,
                                child: Center(
                                  child: CircularProgressIndicator(
                                    color: AppColors.grey,
                                  ),
                                ),
                              ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
