import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppStorage extends GetxService {
  static final AppStorage _appStorage = AppStorage._init();

  factory AppStorage() {
    return _appStorage;
  }

  AppStorage._init();

  Future<SharedPreferences> sharedPreferences() async {
    return await SharedPreferences.getInstance();
  }

  static setString(String key, String value) async {
    SharedPreferences pref = Get.find();
    await pref.setString(key, value);
  }

  static String? getString(String key) {
    SharedPreferences pref = Get.find();
    return pref.getString(key);
  }

  static setInt(String key, int value) async {
    SharedPreferences pref = Get.find();
    await pref.setInt(key, value);
  }

  static int? getInt(String key) {
    SharedPreferences pref = Get.find();
    return pref.getInt(key);
  }

  static setListString(String key, List<String> value) async {
    SharedPreferences pref = Get.find();
    await pref.setStringList(key, value);
  }

  static List<String>? getListString(String key) {
    SharedPreferences pref = Get.find();
    return pref.getStringList(key);
  }

  static setBool(String key, bool value) async {
    SharedPreferences pref = Get.find();
    await pref.setBool(key, value);
  }

  static bool? getBool(String key) {
    SharedPreferences pref = Get.find();
    return pref.getBool(key);
  }

  static removeSharedPrefrences(String key) async {
    SharedPreferences pref = Get.find();
    await pref.remove(key);
  }
}

class SharedPreferencesKeys {
  static const String localeCode = 'locale_code';
  static const String scannedCardInfo = 'scanned_card_info';
  static const String userAuthInfo = 'user_auth_info';
}
