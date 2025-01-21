// import 'package:flutter/material.dart';
import 'package:flutter_getx_full_course/dependency_management/controller.dart';
import 'package:flutter_getx_full_course/getx_service/setting_service.dart';
import 'package:flutter_getx_full_course/themes/themes_controller.dart';
import 'package:flutter_getx_full_course/translations/translation_controller.dart';
// import 'package:flutter_getx_full_course/getx_controller/controller.dart';
import 'package:get/get.dart';

class AllBinding implements Bindings {
  @override
  void dependencies() {
    // controller 1 ---------------------------------------

    ///*******1 method1 */
    //  Get.put(DependencyController());

    ///*******2 method2 */
    // Get.lazyPut<DependencyController>(() => DependencyController());

    ///******* 3 method3 */
    // Get.lazyPut<DependencyController>(
    //   () => DependencyController(),
    //   fenix: true,
    // );

    ///******* 4 method4 */
    // Get.putAsync<AsyncTask>(
    //   () async {
    //     await Future.delayed(const Duration(seconds: 2));
    //     return AsyncTask();
    //   },
    //   permanent: true,
    // );

    ///******* 5 method5 */
    // Get.create<DependencyController>(
    //   () => DependencyController(),
    //   permanent: true,
    // );

    // Dependency controller -------------------------------------
    Get.lazyPut<DependencyController>(() => DependencyController());

    // Theme controller -------------------------------------

    Get.lazyPut<ThemeController>(() => ThemeController());

    // Translation controller -------------------------------------
    Get.lazyPut<MessageController>(() => MessageController());

    // Getx Service controller -------------------------------------
    Get.lazyPut<SettingService>(() => SettingService());
  }
}
