import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/resource/font_manager.dart';
import '../../../../core/resource/size_manager.dart';
import '../../../../core/widget/text/app_text_widget.dart';

/// Eng.Nour Othman(meory)*

class MoreGridTitleList extends StatelessWidget {
  const MoreGridTitleList(
      {super.key,
      required this.title,
      required this.separatorWidget,
      required this.itemWidgets});

  final String title;
  final Widget separatorWidget;
  final List<Widget> itemWidgets;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      AppTextWidget(
        text: title,
        fontWeight: FontWeight.w700,
        fontSize: FontSizeManager.fs17,
      ),
      SizedBox(
        height: AppHeightManager.h1point8,
      ),
      GridView.count(
        childAspectRatio: (MediaQuery.of(context).size.width /
                MediaQuery.of(context).size.height) *
            AppHeightManager.h06,
        crossAxisCount: 2,
        primary: false,
        crossAxisSpacing: AppWidthManager.w2,
        mainAxisSpacing: AppHeightManager.h1point5,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        children: itemWidgets,
      )
    ]);
  }
}
