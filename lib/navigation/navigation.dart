import 'package:flutter/material.dart';
import 'package:flutter_getx_full_course/navigation/next_screen.dart';
import 'package:get/get.dart';

class GetNavigation extends StatelessWidget {
  const GetNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Get Navigation',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const GetNavigation()),
        GetPage(name: '/next', page: () => const NextScreen()),
      ],
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Get Navigation'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  Get.to(
                    () => const NextScreen(),
                    transition: Transition.rightToLeft,
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeInOut,
                    // https://api.flutter.dev/flutter/animation/Curves-class.html
                    arguments: ['hello world from Get.to()', 123],
                  );
                  debugPrint('Go to Next Screen ');
                },
                child: const Text('Get.to(NextScreen)'),
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.off(
                      () => const NextScreen(),
                      transition: Transition.rightToLeft,
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeInOut,
                      // https://api.flutter.dev/flutter/animation/Curves-class.html
                      arguments: 'hello world from Get.to()',
                    );
                  },
                  child: const Text('Get.off(NextScreen)')),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(
                    '/next',
                    arguments: ['hello world from Get.toNamed("/next")', 123],
                    parameters: {'id': '123', 'name': 'name'},
                  );
                },
                child: const Text('Get.toNamed(/next/123)'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.offNamed(
                    '/next',
                    arguments: 'hello world from Get.offNamed()',
                  );
                },
                child: const Text('Get.offNamed(/next)'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
