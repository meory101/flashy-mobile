import 'package:flashy/core/resource/color_manager.dart';
import 'package:flashy/core/resource/font_manager.dart';
import 'package:flashy/core/resource/size_manager.dart';
import 'package:flashy/core/storage/shared/shared_pref.dart';
import 'package:flashy/core/widget/button/main_app_button.dart';
import 'package:flashy/core/widget/text/app_text_widget.dart';
import 'package:flashy/router/router.dart';
import 'package:flutter/material.dart';

void showLogoutDialog({required BuildContext context}) {
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        insetPadding:
            EdgeInsets.symmetric(horizontal: AppWidthManager.w3Point8),
        child: StatefulBuilder(builder: (context, setState) {
          return Container(
            decoration: BoxDecoration(
                color: AppColorManager.white,
                borderRadius: BorderRadius.circular(AppRadiusManager.r15)),
            padding: EdgeInsets.all(AppWidthManager.w3Point8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppTextWidget(
                  text: "logout",
                  fontSize: FontSizeManager.fs17,
                  fontWeight: FontWeight.w700,
                ),
                AppTextWidget(
                  text: "Are You Sure You Want To Logout?",
                  fontSize: FontSizeManager.fs15,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(
                  height: AppHeightManager.h2point5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MainAppButton(
                      width: AppWidthManager.w35,

                      alignment: Alignment.center,
                      color: AppColorManager.white,
                      onTap: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                          RouteNamedScreens.login,
                          (route) => false,
                        );
                      },
                      height: AppHeightManager.h5,
                      child: AppTextWidget(
                        text: "logout",
                        color: AppColorManager.teal,
                        fontSize: FontSizeManager.fs15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      width: AppWidthManager.w3Point8,
                    ),
                    MainAppButton(
                      color: AppColorManager.teal,
                     width: AppWidthManager.w35,
                      alignment: Alignment.center,
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      height: AppHeightManager.h5,
                      child: AppTextWidget(
                        text: "cancel",
                        color: AppColorManager.white,
                        fontSize: FontSizeManager.fs15,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
        }),
      );
    },
  );
}
