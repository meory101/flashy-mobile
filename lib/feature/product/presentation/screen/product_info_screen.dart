import 'package:flashy/core/widget/app_bar/main_app_bar.dart';
import 'package:flashy/core/widget/button/main_app_button.dart';
import 'package:flashy/feature/product/presentation/widget/add_to_cart_bottom_sheet.dart';
import 'package:flashy/feature/product/presentation/widget/product_total.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(title: ""),
      bottomSheet: const AddToCartBottomSheet(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
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
            const ProductTotal(),
            ],
          ),
        ),
      ),
    );
  }
}
