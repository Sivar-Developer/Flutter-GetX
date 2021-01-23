import 'package:get/get.dart';

class ForthController extends GetxController {
  var count = 0.obs;

  void increment() {
    count++;
  }

  @override
  void onInit() {
    print('Init called');
    ever(count, (_) => print(count));
    super.onInit();
  }

  @override
  void onClose() {
    print('Init called');
    super.onClose();
  }
}