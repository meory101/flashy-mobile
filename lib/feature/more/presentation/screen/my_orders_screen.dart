import 'package:flashy/core/resource/color_manager.dart';
import 'package:flashy/core/resource/font_manager.dart';
import 'package:flashy/core/resource/size_manager.dart';
import 'package:flashy/core/widget/app_bar/main_app_bar.dart';
import 'package:flashy/core/widget/text/app_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyOrdersScreen extends StatefulWidget {
  const MyOrdersScreen({super.key});

  @override
  State<MyOrdersScreen> createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(title: "MyOrders"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppWidthManager.w3Point8),
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(AppWidthManager.w3Point8),
                    decoration: BoxDecoration(
                      color: AppColorManager.white,
                      borderRadius: BorderRadius.circular(
                        AppRadiusManager.r15,
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppTextWidget(
                              text: "1234-OIOP",
                              color: AppColorManager.grey,
                              fontSize: FontSizeManager.fs14,
                              fontWeight: FontWeight.w500,
                            ),
                            AppTextWidget(
                              text: "status",
                              color: AppColorManager.orange,
                              fontSize: FontSizeManager.fs16,
                              fontWeight: FontWeight.w600,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: AppHeightManager.h1point8,
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
