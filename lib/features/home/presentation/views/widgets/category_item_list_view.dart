import 'package:burger_app/features/home/presentation/views/widgets/category_item.dart';
import 'package:flutter/material.dart';

class CategoryItemListView extends StatefulWidget {
  const CategoryItemListView({super.key});

  @override
  State<CategoryItemListView> createState() => _CategoryItemListViewState();
}

class _CategoryItemListViewState extends State<CategoryItemListView> {
  List<String> categories = ['Burger', 'Pizza', 'Fries', 'Drinks', 'Desserts'];
  int selectedIndex = 0;

  void onCategorySelected(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: List.generate(
          categories.length,
          (index) => GestureDetector(
            onTap: () => onCategorySelected(index),
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: CategoryItem(
                categoryName: categories[index],
                inActive: selectedIndex == index ? true : false,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
