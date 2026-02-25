import 'package:burger_app/features/home/presentation/views/widgets/card_item.dart';
import 'package:flutter/material.dart';

class CardItemGridView extends StatelessWidget {
  const CardItemGridView({super.key});

  @override
  Widget build(BuildContext context) {
    int crossAxisCount = 2;
    double mainAxisExtent = 220.0;
    double screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth < 700) {
      crossAxisCount = 2;
      mainAxisExtent = 225.0;
    } else if (screenWidth < 900) {
      crossAxisCount = 3;
      mainAxisExtent = 230.0;
    } else {
      crossAxisCount = 4;
      mainAxisExtent = 235.0;
    }

    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 12.0,
        mainAxisExtent: mainAxisExtent,
        childAspectRatio: 1.0,
        mainAxisSpacing: 12.0,
        crossAxisCount: crossAxisCount,
      ),
      itemCount: 13,
      itemBuilder: (context, index) {
        return const CardItem();
      },
    );
  }
}
