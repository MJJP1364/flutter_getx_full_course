import 'package:flutter/material.dart';
import 'package:flutter_getx_full_course/getx_controller/controller.dart';

import 'package:get/get.dart';

class GetxExzmple extends StatelessWidget {
   GetxExzmple({super.key});

    final obxController = Get.put(GetxControllerExzmple());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Controller Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<GetxControllerExzmple>(
              init: GetxControllerExzmple(),
              builder: (controller) => Text(
                'Count with GetX : ${controller.count.value}',
                style: const TextStyle(fontSize: 30),
              ),
            ),
            const SizedBox(height: 30),
            Obx(
              () => Text(
                'Count with Obx : ${obxController.count.value}',
                style: const TextStyle(fontSize: 30),
              ),
            ),
            const SizedBox(height: 30),
            GetBuilder<GetxControllerExzmple>(
              init: GetxControllerExzmple(),
              builder: (controller) => Text(
                'Count with GetBuilder : ${controller.counter}',
                style: const TextStyle(fontSize: 30),
              ),
            ),
            const SizedBox(height: 30),
            GetBuilder<GetxControllerExzmple>(
              id: 'count1',
              builder: (controller) => Text(
                'Count with GetBuilder with id : ${controller.counter}',
                style: const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 30),
            GetBuilder<GetxControllerExzmple>(
              id: 'count2',
              builder: (controller) => Text(
                'Count with GetBuilder with id <10: ${controller.counter}',
                style: const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Get.toNamed('/detail'),
              child: const Text('Go to Detail Page'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.find<GetxControllerExzmple>().increment(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
