import 'package:flutter/cupertino.dart';

import '../../../../core/helper/language_helper.dart';
import '../../../../core/resource/size_manager.dart';
import '../../../../core/widget/image/main_image_widget.dart';

class SubCategoryCard extends StatelessWidget {
  final int index;
  const SubCategoryCard({super.key,required this.index});

  @override
  Widget build(BuildContext context) {
    return     Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      margin: EdgeInsets.only(
        left: !LanguageHelper.checkIfLTR(context: context)
            ? AppWidthManager.w1Point8
            : index == 0
            ? AppWidthManager.w1Point8
            : 0,
        right: LanguageHelper.checkIfLTR(context: context)
            ? AppWidthManager.w1Point8
            : index == 0
            ? AppWidthManager.w1Point8
            : 0,
      ),
      height: AppHeightManager.h15,
      width: AppHeightManager.h15,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppRadiusManager.r15)),
      child: MainImageWidget(
        borderRadius: BorderRadius.circular(AppRadiusManager.r15),
        height: AppHeightManager.h15,
        width: AppHeightManager.h15,
        imageUrl: "",
      ),
    );
  }
}
