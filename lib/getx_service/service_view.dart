import 'package:flutter/material.dart';
import 'package:flutter_getx_full_course/getx_service/setting_service.dart';
import 'package:get/get.dart';

class ServiceExample extends GetView<SettingService> {
  const ServiceExample({super.key});

  // final controller = Get.find<SettingService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx Service'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Getx Service',
              style: TextStyle(fontSize: 30),
            ),
            const Divider(
              height: 2,
              color: Colors.black,
              indent: 20,
              endIndent: 20,
            ),
            const SizedBox(height: 30),
            Obx(
              () {
                return Text(
                  'Counter1: ${controller.counter.value} times',
                  style: const TextStyle(fontSize: 30),
                );
              },
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => controller.incrementCounter1(),
              child: const Text('Increment'),
            ),
            const SizedBox(height: 30),
            const Divider(
              height: 2,
              color: Colors.black,
              indent: 20,
              endIndent: 20,
            ),
            Obx(
              () {
                return Text(
                  'Counter2: ${controller.counter2.value} times',
                  style: const TextStyle(fontSize: 30),
                );
              },
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => controller.incrementCounter2(),
              child: const Text('Increment'),
            ),
            const SizedBox(height: 30),
            const Divider(
              height: 2,
              color: Colors.black,
              indent: 20,
              endIndent: 20,
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => controller.cleanCount(),
                  child: const Text('Clean Count'),
                ),
                const SizedBox(width: 30),
                ElevatedButton(
                  onPressed: () => controller.clear(),
                  child: const Text('Clear Prefs'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
