import 'package:burger_app/core/utils/app_colors.dart';
import 'package:burger_app/features/home/presentation/product_cubits/product_cubit.dart';
import 'package:burger_app/features/home/presentation/views/widgets/card_item_grid_view.dart';
import 'package:burger_app/features/home/presentation/views/widgets/category_item_list_view.dart';
import 'package:burger_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:burger_app/features/home/presentation/views/widgets/custom_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    context.read<ProductCubit>().getProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if (state is ProductFailure) {
          return Text(state.errorMessage);
        } else if (state is ProductLoading) {
          return const Center(child: CircularProgressIndicator(
            color: AppColors.grey,
          ));
        } else if (state is ProductSuccess) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Skeletonizer(
              enabled: state is ProductLoading ? true : false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomAppBar(),
                  const SizedBox(height: 16.0),
                  const CustomSearch(),
                  const SizedBox(height: 16.0),
                  const CategoryItemListView(),
                  const SizedBox(height: 16.0),
                  Expanded(child: CardItemGridView(items: state.productEntity)),
                  const SizedBox(height: 16.0),
                ],
              ),
            ),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
