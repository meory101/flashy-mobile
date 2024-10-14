import 'package:shared_preferences/shared_preferences.dart';

import '../../resource/key_manger.dart';

abstract class AppSharedPreferences {
  static late SharedPreferences _sharedPreferences;

  static init(SharedPreferences sh) {
    _sharedPreferences = sh;
  }

  static clear() {
    _sharedPreferences.clear();
  }



  static cashLanguage({required String language}) {
    _sharedPreferences.setString(AppKeyManager.language, language);
  }

  static cashGuestMode({required bool isGuest}) {
    _sharedPreferences.setBool(AppKeyManager.guestModeLocalKey, isGuest);
  }


  static String getLanguage() {
    return _sharedPreferences.getString(AppKeyManager.language) ?? "en";
  }


}
