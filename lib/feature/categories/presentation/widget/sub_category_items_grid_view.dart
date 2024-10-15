import 'package:flutter/cupertino.dart';
import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';

import '../../../../core/resource/size_manager.dart';
import '../../../home/presentation/widget/item_card.dart';

class SubCategoryItemsGridView extends StatelessWidget {
  const SubCategoryItemsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DynamicHeightGridView(
          crossAxisSpacing: AppWidthManager.w3Point8,
          mainAxisSpacing: AppWidthManager.w3Point8,
          crossAxisCount: 2,
          builder: (context, index) {
            return const ItemCard();
          },
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 6,
        ),
        SizedBox(
          height: AppHeightManager.h1point8,
        ),
      ],
    );
  }
}
