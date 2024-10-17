import 'package:flutter/cupertino.dart';
import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';

import '../../../../core/resource/size_manager.dart';
import '../../../../core/widget/product/item_card.dart';
class WholesaleItemsGridView extends StatelessWidget {
  const WholesaleItemsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return    DynamicHeightGridView(

      crossAxisSpacing: AppWidthManager.w3Point8,
      mainAxisSpacing: AppWidthManager.w3Point8,
      crossAxisCount: 2,
      builder: (context, index) {
        return const ItemCard();
      },
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 6,
    );
  }
}
