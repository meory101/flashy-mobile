import 'package:flashy/core/resource/color_manager.dart';
import 'package:flashy/core/resource/font_manager.dart';
import 'package:flashy/core/resource/icon_manager.dart';
import 'package:flashy/core/widget/button/main_app_button.dart';
import 'package:flashy/core/widget/form_field/app_form_field.dart';
import 'package:flashy/core/widget/text/app_text_widget.dart';
import 'package:flashy/router/router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/resource/image_manager.dart';
import '../../../../core/resource/size_manager.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool checkedValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: AppHeightManager.h100,
          width: AppWidthManager.w100,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                AppImageManager.splash,
              ),
            ),
          ),
          child: Container(
            padding: EdgeInsets.all(AppWidthManager.w3Point8),
            margin: EdgeInsets.only(
                top: AppHeightManager.h25,
                left: AppWidthManager.w3Point8,
                right: AppWidthManager.w3Point8,
                bottom: AppHeightManager.h1point8),
            decoration: BoxDecoration(
                color: AppColorManager.background,
                borderRadius:
                    BorderRadius.all(Radius.circular(AppRadiusManager.r20))),
            child: Column(
              children: [
                SizedBox(
                  height: AppHeightManager.h2,
                ),
                AppTextWidget(
                  text: "Get Started",
                  style: TextStyle(
                      color: AppColorManager.teal,
                      fontSize: FontSizeManager.fs20,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: AppHeightManager.h5,
                ),
                AppTextFormField(
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppWidthManager.w3Point8),
                    child: SvgPicture.asset(
                      AppIconManager.person,
                      colorFilter: const ColorFilter.mode(
                          AppColorManager.textGrey, BlendMode.srcIn),
                    ),
                  ),
                  hintText: "userName",
                  textInputType: TextInputType.text,
                  hintStyle: const TextStyle(color: AppColorManager.textGrey),
                  onChanged: (value) {
                    return null;
                  },
                  validator: (value) {
                    return null;
                  },
                ),
                SizedBox(
                  height: AppHeightManager.h1point8,
                ),
                AppTextFormField(
                  textInputType: TextInputType.emailAddress,
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppWidthManager.w3Point8),
                    child: SvgPicture.asset(
                      AppIconManager.email,
                      colorFilter: const ColorFilter.mode(
                          AppColorManager.textGrey, BlendMode.srcIn),
                    ),
                  ),
                  hintText: "email",
                  hintStyle: const TextStyle(color: AppColorManager.textGrey),
                  onChanged: (value) {
                    return null;
                  },
                  validator: (value) {
                    return null;
                  },
                ),
                SizedBox(
                  height: AppHeightManager.h1point8,
                ),
                AppTextFormField(
                  textInputType: TextInputType.visiblePassword,
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppWidthManager.w3Point8),
                    child: SvgPicture.asset(
                      AppIconManager.lock,
                      colorFilter: const ColorFilter.mode(
                          AppColorManager.textGrey, BlendMode.srcIn),
                    ),
                  ),
                  hintText: "password",
                  hintStyle: const TextStyle(color: AppColorManager.textGrey),
                  onChanged: (value) {
                    return null;
                  },
                  validator: (value) {
                    return null;
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      // visualDensity: AppStyleManager.checkBoxVisualDensity,
                      activeColor: AppColorManager.teal,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(AppRadiusManager.r4),
                        side: const BorderSide(
                            color: AppColorManager.textGrey, width: 1),
                      ),
                      side: const BorderSide(
                          color: AppColorManager.textGrey, width: 1),
                      checkColor: AppColorManager.white,
                      value: checkedValue,
                      onChanged: (value) {
                        setState(() {
                          checkedValue = value ?? false;
                        });
                      },
                    ),
                    Row(
                      children: [
                        AppTextWidget(
                          text: "iAcceptThis",
                          color: AppColorManager.textAppColor,
                          fontSize: FontSizeManager.fs15,
                          fontWeight: FontWeight.w600,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.visible,
                        ),
                        SizedBox(
                          width: AppWidthManager.w1,
                        ),
                        AppTextWidget(
                          text: "termAndConditions",
                          color: AppColorManager.teal,
                          textDecoration: TextDecoration.underline,
                          fontSize: FontSizeManager.fs15,
                          decorationColor: AppColorManager.teal,
                          fontWeight: FontWeight.w600,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.visible,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: AppHeightManager.h6,
                ),
                MainAppButton(
                  onTap: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      RouteNamedScreens.mainAppBar,
                      (route) => false,
                    );
                  },
                  borderRadius: BorderRadius.circular(AppRadiusManager.r10),
                  height: AppHeightManager.h6,
                  color: AppColorManager.teal,
                  alignment: Alignment.center,
                  child: AppTextWidget(
                    text: "Sign Up",
                    style: TextStyle(
                        color: AppColorManager.white,
                        fontSize: FontSizeManager.fs16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: AppHeightManager.h08,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppTextWidget(
                      text: "do you have an account?",
                      color: AppColorManager.textAppColor,
                      fontSize: FontSizeManager.fs15,
                      fontWeight: FontWeight.w600,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.visible,
                    ),
                    SizedBox(
                      width: AppWidthManager.w1,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .pushReplacementNamed(RouteNamedScreens.login);
                      },
                      child: AppTextWidget(
                        text: "login",
                        color: AppColorManager.teal,
                        fontSize: FontSizeManager.fs15,
                        decorationColor: AppColorManager.teal,
                        fontWeight: FontWeight.w600,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.visible,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
