import 'package:flashy/core/widget/app_bar/main_app_bar.dart';
import 'package:flashy/core/widget/button/main_app_button.dart';
import 'package:flutter/material.dart';
import '../../../../core/helper/language_helper.dart';
import '../../../../core/resource/color_manager.dart';
import '../../../../core/resource/font_manager.dart';
import '../../../../core/resource/size_manager.dart';
import '../../../../core/widget/text/app_text_widget.dart';
import '../widget/product_image_slider.dart';

class ProductInfoScreen extends StatefulWidget {
  const ProductInfoScreen({super.key});

  @override
  State<ProductInfoScreen> createState() => _ProductItemScreenState();
}

class _ProductItemScreenState extends State<ProductInfoScreen> {
  int _quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: MainAppButton(
        alignment: Alignment.center,
        margin: EdgeInsets.all(AppWidthManager.w3Point8),
        width: AppWidthManager.w100,
        height: AppHeightManager.h6,
        color: AppColorManager.teal,
        borderRadius: BorderRadius.circular(AppRadiusManager.r20),
        child: AppTextWidget(
          text: "Add To Cart",
          style: TextStyle(
              fontSize: FontSizeManager.fs16,
              color: AppColorManager.white,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: AppHeightManager.h3,
              ),
              const ProductImageSlider(),
              Padding(
                padding: EdgeInsets.all(AppWidthManager.w3Point8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppTextWidget(
                      text: "Product name",
                      style: TextStyle(
                          fontSize: FontSizeManager.fs17,
                          color: AppColorManager.textAppColor,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: AppHeightManager.h05),
                    AppTextWidget(
                      text: "Product category",
                      style: TextStyle(
                          fontSize: FontSizeManager.fs15,
                          color: AppColorManager.grey,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: AppHeightManager.h1point8),
                    AppTextWidget(
                        text:
                            "Product Description: This is a detailed description of the product. It includes features, materials, and other important details that make the product unique.",
                        fontSize: FontSizeManager.fs15,
                        overflow: TextOverflow.visible,
                        color: AppColorManager.textAppColor,
                        fontWeight: FontWeight.w600),
                    SizedBox(height: AppHeightManager.h1point8),
                  ],
                ),
              ),
              SizedBox(
                height: AppHeightManager.h1point8,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: AppWidthManager.w3Point8),
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
                              color: AppColorManager.teal,
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
                                color: AppColorManager.textGrey,
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
                                right:
                                    LanguageHelper.checkIfLTR(context: context)
                                        ? const BorderSide(
                                            width: 2,
                                            color: AppColorManager.borderGrey,
                                          )
                                        : BorderSide.none,
                                left:
                                    !LanguageHelper.checkIfLTR(context: context)
                                        ? const BorderSide(
                                            width: 2,
                                            color: AppColorManager.borderGrey,
                                          )
                                        : BorderSide.none,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: AppWidthManager.w3,
                          ),
                          Text(
                            '$_quantity',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: AppWidthManager.w3,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border(
                                right:
                                    LanguageHelper.checkIfLTR(context: context)
                                        ? const BorderSide(
                                            width: 2,
                                            color: AppColorManager.borderGrey,
                                          )
                                        : BorderSide.none,
                                left:
                                    !LanguageHelper.checkIfLTR(context: context)
                                        ? const BorderSide(
                                            width: 2,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
