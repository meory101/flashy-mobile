import 'package:easy_localization/easy_localization.dart';
import 'package:flashy/core/resource/color_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../core/resource/font_manager.dart';
import '../../../../core/resource/icon_manager.dart';
import '../../../../core/resource/size_manager.dart';
import '../../../../core/widget/text/app_text_widget.dart';
import '../widget/basics_item.dart';
import '../widget/more_gride_title_list.dart';
import '../widget/settings_item.dart';

/// Eng.Nour Othman(meory)*

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(bottom: AppHeightManager.h2),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppWidthManager.w3Point8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: AppHeightManager.h3,
              ),
              AppTextWidget(text: "Nour Othman",
              style: TextStyle(
                color: AppColorManager.textAppColor,
                fontSize: FontSizeManager.fs17,
                fontWeight: FontWeight.w700
              ),

              ),
          AppTextWidget(text: "othmannour2001@gmail.com",
            style: TextStyle(
                color: AppColorManager.textAppColor,
                fontSize: FontSizeManager.fs15,
                fontWeight: FontWeight.w600
            ),),
              SizedBox(
                height: AppHeightManager.h4,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppTextWidget(
                    text: 'basics'.tr(),
                    fontWeight: FontWeight.w700,
                    fontSize: FontSizeManager.fs17,
                  ),
                  SizedBox(
                    height: AppHeightManager.h1,
                  ),
                  BasicsItem(
                    onTap: () {},
                    title: "flashy wholesale jewellery".tr(),
                    icon: AppIconManager.gem,
                  ),
                ],
              ),
              SizedBox(
                height: AppHeightManager.h4,
              ),
              MoreGridTitleList(
                title: "settings".tr(),
                itemWidgets: [
                  SettingsItem(
                    onTap: () {},
                    title: "language".tr(),
                    icon: AppIconManager.translate,
                  ),
                  SettingsItem(
                    onTap: () {},
                    title: "notifications".tr(),
                    icon: AppIconManager.notification,
                  ),
                  SettingsItem(
                    onTap: () {},
                    title: "aboutUs".tr(),
                    icon: AppIconManager.aboutUs,
                  ),
                  SettingsItem(
                    onTap: () {},
                    title: "contactUs".tr(),
                    icon: AppIconManager.call,
                  ),
                  SettingsItem(
                    onTap: () {},
                    title: "privacyPolicy".tr(),
                    icon: AppIconManager.privacyPolicy,
                    fontSize: FontSizeManager.fs14,
                  ),
                  SettingsItem(
                    onTap: () {},
                    title: "signOut".tr(),
                    icon: AppIconManager.logout,
                  ),

                ],
                separatorWidget: SizedBox(
                  height: AppHeightManager.h1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
