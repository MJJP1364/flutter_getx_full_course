import 'package:flutter_getx_full_course/dependency_management/controller.dart';
import 'package:flutter_getx_full_course/dependency_management/view.dart';
import 'package:flutter_getx_full_course/getx_controller/detail_page.dart';
import 'package:flutter_getx_full_course/getx_controller/view.dart';
import 'package:flutter_getx_full_course/navigation/next_screen.dart';
import 'package:flutter_getx_full_course/state_management/reactive_state_management.dart';
import 'package:flutter_getx_full_course/state_management/simple_state_management.dart';
import 'package:get/get.dart';

List<GetPage> routes = [
  GetPage(name: '/next', page: () => const NextScreen()),
  GetPage(name: '/reactive', page: () => ReactiveStateManagement()),
  GetPage(name: '/simple', page: () => const SimpleStateMamagement()),
  GetPage(name: '/getx', page: () => GetxExzmple()),
  GetPage(name: '/detail', page: () => DetailPage()),
  GetPage(
    name: '/dependency',
    page: () => DependencyView(),
    binding: BindingsBuilder(
      () {
        Get.lazyPut<DependencyController>(
          () => DependencyController(),
          fenix: true,
        );
      },
    ),
  ),
];
