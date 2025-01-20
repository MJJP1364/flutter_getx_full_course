import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_getx_full_course/navigation/navigation.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();

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
