import 'package:flashy/core/resource/color_manager.dart';
import 'package:flashy/core/resource/font_manager.dart';
import 'package:flashy/core/resource/icon_manager.dart';
import 'package:flashy/core/widget/button/main_app_button.dart';
import 'package:flashy/core/widget/form_field/app_form_field.dart';
import 'package:flashy/core/widget/text/app_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/resource/image_manager.dart';
import '../../../../core/resource/size_manager.dart';
import '../../../../router/router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<LoginScreen> {
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
                AppImageManager.loginBackGround,
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
                  text: "Welcome Back!",
                  style: TextStyle(
                      color: AppColorManager.teal,
                      fontSize: FontSizeManager.fs20,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: AppHeightManager.h5,
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
                SizedBox(
                  height: AppHeightManager.h08,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: AppWidthManager.w2,
                    ),
                    AppTextWidget(
                      text: "forgot password?",
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
                      text: "reset here",
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
                SizedBox(
                  height: AppHeightManager.h6,
                ),
                MainAppButton(
                  onTap: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(RouteNamedScreens.mainAppBar, (route) => false,);
                  },
                  borderRadius: BorderRadius.circular(AppRadiusManager.r10),
                  height: AppHeightManager.h6,
                  color: AppColorManager.teal,
                  alignment: Alignment.center,
                  child: AppTextWidget(
                    text: "Login",
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
                      text: "don\'t have an account?",
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
                            .pushReplacementNamed(RouteNamedScreens.register);
                      },
                      child: AppTextWidget(
                        text: "register",
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
