import 'package:flutter_getx_full_course/dependency_management/controller.dart';
// import 'package:flutter_getx_full_course/getx_controller/controller.dart';
import 'package:get/get.dart';

class DetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DependencyController>(
      () => DependencyController(),
    );

    // Get.lazyPut(
    //   () => GetxControllerExzmple(),
    //   fenix: true
    // );
  }
}
