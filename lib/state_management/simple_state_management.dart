import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'simple_state_controller.dart';

class SimpleStateMamagement extends StatelessWidget {
  const SimpleStateMamagement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple State Management'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<Controller>(
              init: Controller(),
              builder: (controller) => Text(
                'with GetBuilder : ${controller.counter}',
                style: const TextStyle(fontSize: 30),
              ),
            ),
            GetX<Controller>(
              // init: Controller(), dont need to init
              builder: (controller) => Text(
                'with GetX : ${controller.name}',
                style: const TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // onPressed: () => Get.find<Controller>().increment(),
        onPressed: () => Controller.to.increment(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
