import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxControllerExzmple extends GetxController {
  // for obx and Getx
  final count = 0.obs;
  // for GetBuilder
  int counter = 0;

  void increment() {
    // for obx and Getx
    count.value++;
    // for GetBuilder
    counter++;
    update();
    // for getBuilder with id
    update(['count1']);
    update(['count2'], count < 10);
  }

  void cleanCount() {
// for obx and Getx
    count.value = 0;
    // for GetBuilder
    counter = 0;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    debugPrint('onInit');

    ///****** cilled every time count changes
    // this is for single value
    // ever(count, (_) => debugPrint('$_ has been changed'));
    // this is for lists
    // everAll([count], (_) => debugPrint('$_ has been changed'));

    ///****** called only first time count changes
    // once(count, (_) => debugPrint('$_ has been changed once'));

    ///*****  called every time the user stop typing for 1000ms
    // debounce(
    //   count,
    //   (_) => debugPrint('$_ has been changed debounce'),
    //   time: const Duration(milliseconds: 1000),
    // );

    ///*** ignore all changes within 1000ms
    // interval(
    //   count,
    //   (_) => debugPrint(' interval $_'),
    //   time: const Duration(milliseconds: 1000),
    // );
  }

  @override
  void onReady() {
    debugPrint('onReady');
    super.onReady();
  }

  @override
  void onClose() {
    debugPrint('onClose');
    cleanCount();
    super.onClose();
  }
}
