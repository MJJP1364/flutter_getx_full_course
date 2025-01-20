import 'package:flutter/material.dart';
import 'package:flutter_getx_full_course/themes/themes.dart';
import 'package:flutter_getx_full_course/themes/themes_controller.dart';
import 'package:get/get.dart';

class ThemeExample extends StatelessWidget {
  ThemeExample({super.key});

  final themeController = Get.put(ThemeController());

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
                  // themeController.changeThemeMode(ThemeMode.light);
                  themeController.changeTheme(Themes.lightThemes);
                  themeController.saveTheme(false);
                } else {
                  // themeController.changeTheme(ThemeMode.dark);
                  themeController.changeTheme(Themes.darkThemes);
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
