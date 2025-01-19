

import 'package:flutter_getx_full_course/dependency_management/controller.dart';
import 'package:get/get.dart';

class DetailsBinding implements Bindings {  
  @override
  void dependencies() {
    Get.lazyPut<DependencyController>(() => DependencyController());
  }
}