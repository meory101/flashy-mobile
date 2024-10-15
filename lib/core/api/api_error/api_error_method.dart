import 'package:flutter/cupertino.dart';

import '../../storage/shared/shared_pref.dart';



abstract class ApiErrorMethod {
  static void invalidSessionToken({required BuildContext context}) {

    AppSharedPreferences.clear();
  }





  static void noInternetConnection({required BuildContext context}) {

  }

  static void serverError({required BuildContext context}) {
  }
}



