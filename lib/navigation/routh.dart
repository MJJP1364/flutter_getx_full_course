import 'package:flutter/material.dart';
import 'package:flutter_getx_full_course/dependency_management/binding.dart';
import 'package:flutter_getx_full_course/dependency_management/view.dart';
import 'package:flutter_getx_full_course/getx_controller/detail_page.dart';
import 'package:flutter_getx_full_course/getx_controller/view.dart';
import 'package:flutter_getx_full_course/getx_service/service_view.dart';
import 'package:flutter_getx_full_course/navigation/next_screen.dart';
import 'package:flutter_getx_full_course/state_management/reactive_state_management.dart';
import 'package:flutter_getx_full_course/state_management/simple_state_management.dart';
import 'package:flutter_getx_full_course/themes/themes_view.dart';
import 'package:flutter_getx_full_course/translations/translation_view.dart';
import 'package:get/get.dart';

// import '../dependency_management/class.dart';

List<GetPage> routes = [
  GetPage(name: '/next', page: () => const NextScreen()),
  GetPage(name: '/reactive', page: () => ReactiveStateManagement()),
  GetPage(name: '/simple', page: () => const SimpleStateMamagement()),
  GetPage(name: '/getx', page: () => GetxExzmple()),
  GetPage(name: '/detail', page: () => DetailPage()),
  GetPage(
      name: '/transition',
      page: () => TranslationExample(),
      binding: AllBinding()),
  GetPage(name: '/Theme', page: () => ThemeExample(), binding: AllBinding()),
  GetPage(
      name: '/service',
      page: () => const ServiceExample(),
      binding: AllBinding()),
  GetPage(
      name: '/dependency',
      page: () => DependencyView(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(seconds: 2),
      curve: Curves.fastOutSlowIn,

//---------- Bindings-------------------------------------------------------
//--------------------------------------------------------------------------
      ///****** binding 1 way come from DetailsBinding class
      binding: AllBinding()

//--------------------------------------------------------------------------

      ///****** binding 2 way
      // binding: BindingsBuilder(
      // () {
      ///*******1 method1 */
      // Get.lazyPut<DependencyController>(() => DependencyController());

      ///******* 2 method2 */
      // Get.lazyPut<DependencyController>(
      //   () => DependencyController(),
      //   fenix: true,
      // );

      ///******* 3 method3 */
      // Get.putAsync<AsyncTask>(
      //   () async {
      //     await Future.delayed(const Duration(seconds: 2));
      //     return AsyncTask();
      //   },
      //   permanent: true,
      // );

      ///******* 4 method4 */
      // Get.create<DependencyController>(
      //   () => DependencyController(),
      //   permanent: true,
      // );
      // },
      // ),
      ),
];
