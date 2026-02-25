import 'package:burger_app/features/home/presentation/views/widgets/card_item_grid_view.dart';
import 'package:burger_app/features/home/presentation/views/widgets/category_item_list_view.dart';
import 'package:burger_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:burger_app/features/home/presentation/views/widgets/custom_search.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const SizedBox(height: 16.0),
          const CustomSearch(),
          const SizedBox(height: 16.0),
          const CategoryItemListView(),
          const SizedBox(height: 16.0),
          const Expanded(child: CardItemGridView()),
          const SizedBox(height: 16.0),
        ],
      ),
    );
  }
}
