import 'package:flashy/core/resource/size_manager.dart';
import 'package:flashy/feature/categories/presentation/widget/sub_categories_list_view.dart';
import 'package:flutter/cupertino.dart';
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
              child: const SubCategoriesListView()
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
