import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingService extends GetxService {
  late SharedPreferences _prefs1;
  late SharedPreferences _prefs2;

  final counter = 0.obs;
  final counter2 = 0.obs;

  Future<SettingService> init() async {
    debugPrint('$runtimeType initalize shared preferences');
    _prefs1 = await SharedPreferences.getInstance();
    _prefs2 = await SharedPreferences.getInstance();
    debugPrint('$runtimeType shared preferences ready');
    counter.value = (_prefs1.getInt('counter') ?? 0);
    counter2.value = (_prefs2.getInt('counter2') ?? 0);

    // also have getBool , getDouble , getString , getStringList
    return this;
  }

  static Future<void> initServices() async {
  debugPrint('Starting Services ...');
  await Get.putAsync(() => SettingService().init());
  debugPrint('Services Started');
}




  Future<void> incrementCounter1() async {
    counter.value++;
    _prefs1.setInt('counter', counter.value);
    // also have setbool , setDouble , setString , setStringList , setInt
  }

  Future<void> incrementCounter2() async {
    counter2.value++;
    _prefs2.setInt('counter2', counter2.value);
    // also have setbool , setDouble , setString , setStringList , setInt
  }

  Future<void> cleanCount() async {
    counter.value = 0;
    counter2.value = 0;
    _prefs1.setInt('counter', counter.value);
    _prefs2.setInt('counter2', counter2.value);
  }

  Future<void> clear() async {
    _prefs1.clear();
    _prefs2.clear();
    init();
  }
}
