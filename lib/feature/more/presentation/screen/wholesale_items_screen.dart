import 'package:flashy/app/app.dart';
import 'package:flashy/core/resource/size_manager.dart';
import 'package:flashy/core/widget/app_bar/main_app_bar.dart';
import 'package:flashy/feature/home/presentation/widget/newest_items_grid_view.dart';
import 'package:flashy/feature/more/presentation/widget/wholesale_items_grid_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WholesaleItemsScreen extends StatefulWidget {
  const WholesaleItemsScreen({super.key});

  @override
  State<WholesaleItemsScreen> createState() => _WholesaleItemsScreenState();
}

class _WholesaleItemsScreenState extends State<WholesaleItemsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(
        title: "wholesaleItems",
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppWidthManager.w3Point8),
            child: Column(
              children: [
                const WholesaleItemsGridView(),
                SizedBox(
                  height: AppHeightManager.h2point5,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
