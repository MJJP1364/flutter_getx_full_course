import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  /// The screen that is pushed when the user presses the button on the home
  /// screen.
  ///
  /// This screen displays the arguments passed to it, and a button that goes
  /// back to the home screen when pressed.
  ///
  /// The arguments are the first and second items of a list passed to the
  /// [Get.toNamed] method that pushed this screen.
  ///
  /// The parameters are the values associated with the keys 'id' and 'name'
  /// in the parameters map passed to the [Get.toNamed] method that pushed this
  /// screen.
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
