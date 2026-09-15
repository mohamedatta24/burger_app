import 'package:burger_app/features/home/presentation/views/widgets/category_item.dart';
import 'package:flutter/material.dart';

class CategoryItemListView extends StatefulWidget {
  const CategoryItemListView({super.key});

  @override
  State<CategoryItemListView> createState() => _CategoryItemListViewState();
}

class _CategoryItemListViewState extends State<CategoryItemListView> {
  final List<String> categories = const [
    "All",
    "Combos",
    "Sliders",
    "Small Burger",
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: categories
            .asMap()
            .entries
            .map(
              (e) => GestureDetector(
                onTap: () {
                  setState(() {
                    currentIndex = e.key;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: CategoryItem(
                    isActive: currentIndex == e.key,
                    title: e.value,
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
