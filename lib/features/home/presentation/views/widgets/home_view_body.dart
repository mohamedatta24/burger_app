import 'package:burger_app/features/home/presentation/views/widgets/card_item_grid_view.dart';
import 'package:burger_app/features/home/presentation/views/widgets/category_item_list_view.dart';
import 'package:burger_app/features/home/presentation/views/widgets/custom_info_user.dart';
import 'package:burger_app/features/home/presentation/views/widgets/search_text_field.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(
            child: Column(
              children: [
                CustomInfoUser(),
                SizedBox(height: 16.0),
                SearchTextField(),
                SizedBox(height: 16.0),
                CategoryItemListView(),
              ],
            ),
          ),
          const CardItemGridView(),
        ],
      ),
    );
  }
}
