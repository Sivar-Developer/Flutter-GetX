import 'package:flutter_getx/models/StudentModel.dart';
import 'package:get/get.dart';

class MyController extends GetxController {

  var student = StudentModel(name: 'Sivar', age: 26).obs;

  void convertToUpperCase() {
    student.update((student) {
      student.name = student.name.toUpperCase();
    });
  }

  void convertToLowerCase() {
    student.update((student) {
      student.name = student.name.toLowerCase();
    });
  }

}