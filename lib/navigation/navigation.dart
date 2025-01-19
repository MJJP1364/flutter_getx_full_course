import 'package:flutter/material.dart';
import 'package:flutter_getx_full_course/navigation/next_screen.dart';
import 'package:flutter_getx_full_course/navigation/routh.dart';
import 'package:flutter_getx_full_course/translations/messages.dart';
import 'package:get/get.dart';

class GetNavigation extends StatelessWidget {
  const GetNavigation({super.key});

  /// Builds the main application widget.
  ///
  /// Returns a [GetMaterialApp] that sets up the navigation
  /// and routes for the application. The app has an initial
  /// route of '/', and includes pages for the main screen
  /// and the next screen. It also includes a [Scaffold] with
  /// an [AppBar] and a [Center] containing a [Column] of
  /// [ElevatedButton]s to navigate between screens using
  /// GetX navigation methods such as [Get.to], [Get.off],
  /// [Get.toNamed], and [Get.offNamed].
  ///
  /// The navigation transitions are animated with a
  /// right-to-left slide and an ease-in-out curve.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Get Navigation',
      initialRoute: '/',
      getPages: routes,
      debugShowCheckedModeBanner: false,

      //-------Translation --------------------------------------------

      translations: Messages(),
      // locale: const Locale('en', 'US'),
      locale: Get.deviceLocale,

      fallbackLocale: const Locale('fa', 'IR'),

      //--------------------------------------------------------------
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
              const Divider(
                thickness: 1,
                indent: 25,
                endIndent: 25,
                color: Colors.black,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(
                    '/reactive',
                  );
                },
                child: const Text('Reactive State Management'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(
                    '/simple',
                  );
                },
                child: const Text('Simple State Management'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(
                    '/getx',
                  );
                },
                child: const Text('GetX Controller Example'),
              ),
              const Divider(
                thickness: 1,
                indent: 25,
                endIndent: 25,
                color: Colors.black,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(
                    '/dependency',
                  );
                },
                child: const Text('Dependency Management'),
              ),
              const Divider(
                thickness: 1,
                indent: 25,
                endIndent: 25,
                color: Colors.black,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(
                    '/transition',
                  );
                },
                child: const Text('Transition Example'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
