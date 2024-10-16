import 'package:flashy/feature/categories/presentation/screen/categories_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/resource/color_manager.dart';
import '../../../../core/resource/icon_manager.dart';
import '../../../../core/resource/size_manager.dart';
import '../../../../core/widget/text/app_text_widget.dart';
import '../../../home/presentation/screen/home_screen.dart';
import '../../../more/presentation/screen/more_screen.dart';

/// Eng.Nour Othman(meory)*

int selectedIndex = 0;

class MainAppBottomAppBar extends StatefulWidget {
  final BottomAppBarArgs? args;

  const MainAppBottomAppBar({super.key, this.args});

  @override
  State<MainAppBottomAppBar> createState() => _MainAppBottomAppBarState();
}

class _MainAppBottomAppBarState extends State<MainAppBottomAppBar> {
  final List<Widget> bottomBarScreens = [
    const HomeScreen(),
    const CategoriesScreen(),
    const HomeScreen(),
    const MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: selectedIndex == 0,
      onPopInvokedWithResult:(didPop, result) {
        if (didPop == false) {
          setState(() {
            selectedIndex = 0;
          });
        } else {
          Navigator.of(context).pop();
        }
      } ,
      child: Scaffold(
          backgroundColor: AppColorManager.background,
          bottomNavigationBar: BottomAppBar(
            color: AppColorManager.background,
            height: AppHeightManager.h12,
            elevation: 0,
            child: Container(
              decoration: BoxDecoration(
                color: AppColorManager.textAppColor,
                borderRadius: BorderRadius.circular(AppRadiusManager.r30),
              ),
              padding: EdgeInsets.only(
                top: AppWidthManager.w3Point8,
                bottom: AppWidthManager.w3Point8,
                left: AppWidthManager.w7,
                right: AppWidthManager.w7,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    overlayColor: const WidgetStatePropertyAll(
                        AppColorManager.transparent),
                    onTap: () {
                      setState(() {
                        selectedIndex = 0;
                      });
                    },
                    child: Column(
                      children: [
                        SvgPicture.asset(AppIconManager.home,
                            colorFilter: ColorFilter.mode(
                                selectedIndex == 0
                                    ? AppColorManager.white
                                    : AppColorManager.grey,
                                BlendMode.srcIn)),
                        AppTextWidget(
                          text: "home",
                          color: selectedIndex == 0
                              ? AppColorManager.white
                              : AppColorManager.grey,
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    overlayColor: const WidgetStatePropertyAll(
                        AppColorManager.transparent),
                    onTap: () {
                      setState(() {
                        selectedIndex = 1;
                      });
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding:  EdgeInsets.zero,
                          child: SvgPicture.asset(AppIconManager.ring,
                              colorFilter: ColorFilter.mode(
                                  selectedIndex == 1
                                      ? AppColorManager.white
                                      : AppColorManager.grey,
                                  BlendMode.srcIn)),
                        ),
                        AppTextWidget(
                          text: "Categories",
                          color: selectedIndex == 1
                              ? AppColorManager.white
                              : AppColorManager.grey,
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    overlayColor: const WidgetStatePropertyAll(
                        AppColorManager.transparent),
                    onTap: () {
                      setState(() {
                        selectedIndex = 2;
                      });
                    },
                    child: Column(
                      children: [
                        SvgPicture.asset(AppIconManager.home,
                            colorFilter: ColorFilter.mode(
                                selectedIndex == 2
                                    ? AppColorManager.white
                                    : AppColorManager.grey,
                                BlendMode.srcIn)),
                        AppTextWidget(
                          text: "Bookings",
                          color: selectedIndex == 2
                              ? AppColorManager.white
                              : AppColorManager.grey,
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    overlayColor: const WidgetStatePropertyAll(
                        AppColorManager.transparent),
                    onTap: () {
                      setState(() {
                        selectedIndex = 3;
                      });
                    },
                    child: Column(
                      children: [
                        SvgPicture.asset(AppIconManager.user,
                            colorFilter: ColorFilter.mode(
                                selectedIndex == 3
                                    ? AppColorManager.white
                                    : AppColorManager.grey,
                                BlendMode.srcIn)),
                        AppTextWidget(
                          text: "More",
                          color: selectedIndex == 3
                              ? AppColorManager.white
                              : AppColorManager.grey,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return FadeTransition(opacity: animation, child: child);
            },
            child: bottomBarScreens[selectedIndex],
          )),
    );
  }
}

class BottomAppBarArgs {
  int? index;
  BottomAppBarArgs({this.index});
}




