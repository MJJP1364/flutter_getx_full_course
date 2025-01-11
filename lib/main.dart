import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_getx_full_course/navigation/navigation.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetNavigation();
  }
}
