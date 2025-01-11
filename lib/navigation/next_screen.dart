import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           
            Text('Arguments : ${Get.arguments[0]} '),
            Text('Arguments : ${Get.arguments[1]} '),
            Text('Parameters : ${Get.parameters['id']} '),
            Text('Parameters : ${Get.parameters['name']} '),
            ElevatedButton(
              onPressed: () {
                Get.back(
                  result: 'success',
                  closeOverlays: false,
                );
                debugPrint('Go Back');
              },
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
