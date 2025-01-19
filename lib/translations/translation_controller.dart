import 'dart:ui';
import 'package:get/get.dart';

class MessageController extends GetxController {
  ///
  /// Changes the locale of the app to the given language code and country code.
  ///
  /// The [langCode] should be a valid language code, such as 'en' for English or
  /// 'es' for Spanish.
  ///
  /// The [countryCode] should be a valid ISO 3166-1 code, such as 'US' for the
  /// United States or 'MX' for Mexico.
  ///
  /// The combination of the [langCode] and [countryCode] should be a valid
  /// locale identifier, such as 'en_US' for English as spoken in the United
  /// States or 'es_MX' for Spanish as spoken in Mexico.
  void changeLanguage(String langCode, String countryCode) {
    var locale = Locale(langCode, countryCode);
    Get.updateLocale(locale);
  }
}
