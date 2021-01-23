import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'hello': 'Hello'
    },
    'ar_AR': {
      'hello': 'مرحبا'
    },
    'ku_sorani': {
      'hello': 'سڵاو'
    },
    'ku_badini': {
      'hello': 'سلاڤ'
    }
  };
}