import 'package:flutter/material.dart';
import 'package:flutter_getx_full_course/dependency_management/controller.dart';
import 'package:flutter_getx_full_course/getx_controller/controller.dart';
import 'package:get/get.dart';

class DependencyView extends StatelessWidget {
  DependencyView({super.key});

  final dependencyController = Get.put(DependencyController());
  final getxControllerExzmple = Get.put(
    GetxControllerExzmple(),
    tag: 'uniqueId',
    permanent: true,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dependency Management'),
      ),
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  '${dependencyController.count.value}',
                  style: const TextStyle(fontSize: 30),
                ),
              ),
              const SizedBox(height: 30),
              Obx(() => Text(
                    '${Get.find<GetxControllerExzmple>(tag: 'uniqueId').count.value}',
                    style: const TextStyle(fontSize: 30),
                  ))
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          dependencyController.increment();
          Get.find<GetxControllerExzmple>(tag: 'uniqueId').increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
