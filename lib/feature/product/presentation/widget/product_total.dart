import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/helper/language_helper.dart';
import '../../../../core/resource/color_manager.dart';
import '../../../../core/resource/font_manager.dart';
import '../../../../core/resource/size_manager.dart';
import '../../../../core/widget/text/app_text_widget.dart';

class ProductTotal extends StatefulWidget {
  const ProductTotal({super.key});

  @override
  State<ProductTotal> createState() => _ProductTotalState();
}

int _quantity = 1;

class _ProductTotalState extends State<ProductTotal> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppWidthManager.w3Point8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              AppTextWidget(
                text: "Total",
                style: TextStyle(
                    fontSize: FontSizeManager.fs17,
                    color: AppColorManager.textAppColor,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                width: AppWidthManager.w2,
              ),
              AppTextWidget(
                text: "\$${(50 * _quantity).toStringAsFixed(2)}",
                style: TextStyle(
                    fontSize: FontSizeManager.fs16,
                    color: AppColorManager.black,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
          Container(
            height: AppHeightManager.h4,
            decoration: const BoxDecoration(
                color: AppColorManager.white,
                boxShadow: [
                  BoxShadow(
                      color: AppColorManager.borderGrey,
                      spreadRadius: 1,
                      blurRadius: 1)
                ]),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    if (_quantity > 1) {
                      setState(() {
                        _quantity--;
                      });
                    }
                  },
                  icon: Icon(
                    Icons.remove,
                    size: AppWidthManager.w4,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      right: LanguageHelper.checkIfLTR(context: context)
                          ? const BorderSide(
                              width: 1,
                              color: AppColorManager.borderGrey,
                            )
                          : BorderSide.none,
                      left: !LanguageHelper.checkIfLTR(context: context)
                          ? const BorderSide(
                              width: 1,
                              color: AppColorManager.borderGrey,
                            )
                          : BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(
                  width: AppWidthManager.w3,
                ),
                AppTextWidget(
                  text: '$_quantity',
                  fontSize: FontSizeManager.fs17,
                  fontWeight: FontWeight.w700,
                ),
                SizedBox(
                  width: AppWidthManager.w3,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      right: LanguageHelper.checkIfLTR(context: context)
                          ? const BorderSide(
                              width: 1,
                              color: AppColorManager.borderGrey,
                            )
                          : BorderSide.none,
                      left: !LanguageHelper.checkIfLTR(context: context)
                          ? const BorderSide(
                              width: 1,
                              color: AppColorManager.borderGrey,
                            )
                          : BorderSide.none,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _quantity++;
                    });
                  },
                  icon: Icon(
                    Icons.add,
                    size: AppWidthManager.w4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
