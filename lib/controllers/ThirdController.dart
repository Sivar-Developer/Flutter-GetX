import 'package:get/get.dart';

class ThirdController extends GetxController {
  var count = 0;

  void increment() async {
    await Future<int>.delayed(Duration(seconds: 3));
    this.count++;
    update();
  }

  void cleanUpTask() {
    print('Clean up task'); 
  }

  @override
  void onInit() {
    print('Init called');
    super.onInit();
  }

  @override
  void onClose() {
    print('Init called');
    super.onClose();
  }
}