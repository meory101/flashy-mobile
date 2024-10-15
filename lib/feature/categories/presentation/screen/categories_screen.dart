import 'package:flashy/core/resource/size_manager.dart';
import 'package:flashy/core/widget/text/app_text_widget.dart';
import 'package:flutter/cupertino.dart';

import '../../../../core/resource/color_manager.dart';
import '../../../../core/resource/font_manager.dart';
import '../../../home/presentation/widget/item_card.dart';
import '../../../home/presentation/widget/sub_category_card.dart';
import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';

import '../widget/sub_category_items_grid_view.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: AppHeightManager.h3,
            ),
            SizedBox(
              height: AppHeightManager.h5,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return SubCategoryCard(index: index);
                },
                itemCount: 10,
              ),
            ),
            SizedBox(
              height: AppHeightManager.h2point5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppWidthManager.w3Point8,
              ),
              child: const SubCategoryItemsGridView(),
            )
          ],
        ),
      ),
    );
  }
}
