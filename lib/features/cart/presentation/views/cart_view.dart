import 'package:burger_app/core/services/dependency_injection.dart';
import 'package:burger_app/features/cart/presentation/cart_cubits/cart_cubit.dart';
import 'package:burger_app/features/cart/presentation/views/widgets/cart_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) => getIt<CartCubit>(),
          child: const CartViewBody(),
        ),
      ),
    );
  }
}
