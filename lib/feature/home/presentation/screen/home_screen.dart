import 'package:flashy/core/resource/font_manager.dart';
import 'package:flashy/core/resource/size_manager.dart';
import 'package:flashy/core/widget/image/main_image_widget.dart';
import 'package:flashy/core/widget/text/app_text_widget.dart';
import 'package:flashy/feature/home/presentation/widget/newest_items_grid_view.dart';
import 'package:flutter/material.dart';
import '../../../../core/helper/language_helper.dart';
import '../../../../core/resource/color_manager.dart';
import '../widget/home_banners.dart';
import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';

/// Eng.Nour Othman(meory)*

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorManager.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: AppHeightManager.h3,
              ),
              const HomeBanners(),
              SizedBox(
                height: AppHeightManager.h3,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppWidthManager.w3Point8,
                ),
                child: NewestItemsGridView(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
