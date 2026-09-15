import 'package:burger_app/features/home/presentation/views/widgets/card_item.dart';
import 'package:flutter/material.dart';

class CardItemGridView extends StatelessWidget {
  const CardItemGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
      sliver: SliverGrid.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 0.75,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const CardItem();
        },
      ),
    );
  }
}
