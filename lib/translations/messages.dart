import 'package:get/get.dart';

///*****   http://www.lingoes.net/en/translator/langcode.htm --------------language code ******/

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello World',
          'logged_in': ' logged in as : @name \n email : @email',
          'goodbye': 'Goodbye',
          'translation': 'Translation',
        },
        'fa_IR': {
          'hello': 'سلام دنیا',
          'logged_in': 'خوش آمدید : @name \n ایمیل : @email',
          'goodbye': 'خداحافظ',
          'translation': 'ترجمه',
        },
      };
}
