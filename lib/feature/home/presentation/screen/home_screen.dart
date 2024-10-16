import 'package:flashy/core/resource/cubit_status_manager.dart';
import 'package:flashy/core/resource/font_manager.dart';
import 'package:flashy/core/resource/icon_manager.dart';
import 'package:flashy/core/resource/size_manager.dart';
import 'package:flashy/core/widget/image/main_image_widget.dart';
import 'package:flashy/core/widget/text/app_text_widget.dart';
import 'package:flashy/feature/home/presentation/cubit/newest_products_cubit.dart';
import 'package:flashy/feature/home/presentation/cubit/newest_products_state.dart';
import 'package:flashy/feature/home/presentation/widget/newest_items_grid_view.dart';
import 'package:flashy/feature/categories/presentation/widget/sub_categories_list_view.dart';
import 'package:flutter/material.dart';
import '../../../../core/helper/language_helper.dart';
import '../../../../core/resource/color_manager.dart';
import '../widget/home_banners.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


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
      body: SafeArea(
        child: SingleChildScrollView(
          child:

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: AppHeightManager.h3,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppWidthManager.w3Point8,
                ),
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppTextWidget(
                          text: "Hi Nour!",
                          style: TextStyle(
                              fontSize: FontSizeManager.fs17,
                              color: AppColorManager.textAppColor,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          width: AppWidthManager.w2,
                        ),
                        AppTextWidget(
                          text: "Welcome to Flashy.",
                          style: TextStyle(
                              fontSize: FontSizeManager.fs15,
                              color: AppColorManager.textAppColor,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SvgPicture.asset(
                      AppIconManager.gem,
                      colorFilter: ColorFilter.mode(
                          AppColorManager.teal,
                          BlendMode.srcIn),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: AppHeightManager.h2,
              ),
              const HomeBanners(),
              SizedBox(
                height: AppHeightManager.h3,
              ),
              BlocConsumer<NewestProductsCubit, NewestProductsState>(
                listener: (context, state) {
                    if(state.status == CubitStatus.error){

                    }
                },
                builder: (context, state) {
                  // if(state.status == CubitStatus.loading){
                  //   return Text('loading');
                  // }
                  return Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppWidthManager.w3Point8,
                    ),
                    child: const NewestItemsGridView(),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
