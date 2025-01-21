import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_getx_full_course/navigation/navigation.dart' as perfix;
import 'package:get_storage/get_storage.dart';

import 'getx_service/setting_service.dart';

Future<void> main() async {
  await GetStorage.init();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  WidgetsFlutterBinding.ensureInitialized();
  await SettingService.initServices();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const perfix.GetNavigation();
  }
}
