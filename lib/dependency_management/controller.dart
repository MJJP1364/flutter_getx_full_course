import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DependencyController extends GetxController {
  // for obx and Getx
  final count = 0.obs;

  void increment() {
    count.value++;
  }

  @override
  void onInit() {
    super.onInit();
    debugPrint('onInit');
  }

  @override
  void onReady() {
    debugPrint('onReady');
    super.onReady();
  }

  @override
  void onClose() {
    debugPrint('onClose');
    super.onClose();
  }
}
