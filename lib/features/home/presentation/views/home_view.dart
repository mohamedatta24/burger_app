import 'package:burger_app/core/services/dependency_injection.dart';
import 'package:burger_app/features/home/presentation/product_cubits/product_cubit.dart';
import 'package:burger_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProductCubit>(),
      child: Scaffold(body: SafeArea(child: const HomeViewBody())),
    );
  }
}
