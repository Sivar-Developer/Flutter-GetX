import 'package:get/get.dart';

class ThirdController extends GetxController {
  var count = 0;

  void increments() async {
    await Future<int>.delayed(Duration(seconds: 3));
    this.count++;
    update();
  }

  void cleanUpTask() {
    print('Clean up task'); 
  }
}