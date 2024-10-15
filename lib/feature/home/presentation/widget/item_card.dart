import 'package:flutter/cupertino.dart';

import '../../../../core/helper/language_helper.dart';
import '../../../../core/resource/color_manager.dart';
import '../../../../core/resource/font_manager.dart';
import '../../../../core/resource/size_manager.dart';
import '../../../../core/widget/image/main_image_widget.dart';
import '../../../../core/widget/text/app_text_widget.dart';
/// Eng.Nour Othman(meory)*

class ItemCard extends StatelessWidget {
  const ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        color: AppColorManager.white,
        borderRadius: BorderRadius.circular(AppRadiusManager.r15),
        boxShadow: const [
          BoxShadow(
            color: AppColorManager.borderGrey,
            spreadRadius: 2,
            blurRadius: 8,
            offset: Offset(0, 4),
          )
        ],
      ),
      child: Column(
        children: [
          MainImageWidget(
            height: AppHeightManager.h20,
            imageUrl: "ddddd",
          ),
          Padding(
            padding: EdgeInsets.only(
                top: AppHeightManager.h08,
                bottom: AppWidthManager.w3Point8,
                left: AppWidthManager.w3Point8,
                right: AppWidthManager.w3Point8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: AppHeightManager.h4,
                      width: AppHeightManager.h4,
                      margin: EdgeInsets.only(
                          left: LanguageHelper.checkIfLTR(context: context)
                              ? 0
                              : AppWidthManager.w1Point8,
                          right: LanguageHelper.checkIfLTR(context: context)
                              ? AppWidthManager.w1Point8
                              : 0),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: AppColorManager.white, width: 2),
                          shape: BoxShape.circle,
                          boxShadow: [
                            LanguageHelper.checkIfLTR(context: context)
                                ? const BoxShadow(
                                    color: AppColorManager.borderGrey,
                                    offset: Offset(4, -2),
                                    blurRadius: 7,
                                    spreadRadius: 1,
                                  )
                                : const BoxShadow(
                                    color: AppColorManager.borderGrey,
                                    offset: Offset(-4, -2),
                                    blurRadius: 7,
                                    spreadRadius: 1,
                                  )
                          ]),
                    ),
                    Flexible(
                      child: AppTextWidget(
                          text: "name",
                          maxLines: 1,
                          fontSize: FontSizeManager.fs15,
                          fontWeight: FontWeight.w600,
                          color: AppColorManager.textAppColor),
                    ),
                  ],
                ),
                SizedBox(
                  height: AppHeightManager.h05,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: !LanguageHelper.checkIfLTR(context: context)
                        ? 0
                        : AppWidthManager.w1Point5,
                    right: LanguageHelper.checkIfLTR(context: context)
                        ? 0
                        : AppWidthManager.w1Point5,
                  ),
                  child: AppTextWidget(
                      maxLines: 2,
                      text: "descdescdescdescdescdescdescdescdescdesc",
                      fontSize: FontSizeManager.fs15,
                      fontWeight: FontWeight.w300,
                      color: AppColorManager.textAppColor),
                ),
                SizedBox(
                  height: AppHeightManager.h05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: !LanguageHelper.checkIfLTR(context: context)
                            ? 0
                            : AppWidthManager.w1Point5,
                        right: LanguageHelper.checkIfLTR(context: context)
                            ? 0
                            : AppWidthManager.w1Point5,
                      ),
                      child: AppTextWidget(
                          maxLines: 2,
                          text: "200\$",
                          fontSize: FontSizeManager.fs16,
                          fontWeight: FontWeight.w700,
                          color: AppColorManager.textAppColor),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
