import 'package:flutter/material.dart';
import 'package:flutter_getx_full_course/translations/translation_controller.dart';
import 'package:get/get.dart';

class TranslationExample extends StatelessWidget {
  TranslationExample({super.key});

  final messageController = Get.put(MessageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'translation'.tr,
          style: const TextStyle(fontSize: 30),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'hello'.tr,
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 30),
            Text(
              'logged_in'
                  .trParams({'name': 'Javad', 'email': 'javad@gmail.com'}),
              style: const TextStyle(fontSize: 25),
            ),
            const SizedBox(height: 30),
            Text(
              'goodbye'.tr,
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              child: const Text('English'),
              onPressed: () => messageController.changeLanguage('en', 'US'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Persian'),
              onPressed: () => messageController.changeLanguage('fa', 'IR'),
            ),
          ],
        ),
      ),
    );
  }
}
