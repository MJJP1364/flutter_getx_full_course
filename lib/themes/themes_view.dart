import 'package:flutter/material.dart';
import 'package:flutter_getx_full_course/themes/themes_controller.dart';
import 'package:get/get.dart';

class ThemeExample extends StatelessWidget {
  ThemeExample({super.key});

  final themeController = Get.find<ThemeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Getx Theme',
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                if (Get.isDarkMode) {
                  themeController.changeThemeMode(ThemeMode.light);
                  //   or-------------
                  // themeController.changeTheme(Themes.lightThemes);
                  // save theme to GetStorage
                  themeController.saveTheme(false);
                } else {
                  themeController.changeThemeMode(ThemeMode.dark);
                  //   or-------------
                  // themeController.changeTheme(Themes.darkThemes);
                  // save theme to GetStorage
                  themeController.saveTheme(true);
                }
              },
              child: const Text('Change Theme'),
            ),
          ],
        ),
      ),
    );
  }
}
