import 'package:burger_app/core/widgets/custom_button.dart';
import 'package:burger_app/core/widgets/total_price.dart';
import 'package:burger_app/features/Checkout/presentation/views/checkout_view.dart';
import 'package:burger_app/features/cart/presentation/cart_cubits/cart_cubit.dart';
import 'package:burger_app/features/cart/presentation/views/widgets/cart_item_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartViewBody extends StatefulWidget {
  const CartViewBody({super.key});

  @override
  State<CartViewBody> createState() => _CartViewBodyState();
}

class _CartViewBodyState extends State<CartViewBody> {
  @override
  void initState() {
    super.initState();
    context.read<CartCubit>().getCart();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        if (state is CartLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is CartGetSuccess) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                Expanded(child: CartItemListView(items: state.cart.items)),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomButton(
                          text: "Checkout",
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const CheckoutView();
                                },
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(width: 50.0),
                      TotalPrice(price: state.cart.totalPrice),
                    ],
                  ),
                ),
              ],
            ),
          );
        } else if (state is CartFailure) {
          return Center(child: Text(state.errorMessage));
        } else {
          return Center(child: Text("Something went wrong"));
        }
      },
    );
  }
}
