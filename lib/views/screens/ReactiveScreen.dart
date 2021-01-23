import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/SecondController.dart';
import 'package:flutter_getx/controllers/MyController.dart';
// import 'package:flutter_getx/models/student.dart';
import 'package:get/get.dart';

class ReactiveScreen extends StatelessWidget {
  // var count = 0.obs;
  // var student = Student();

  // void _increment() {
  //   count++;
  // }

  SecondController secondController = Get.put(SecondController());

  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reactive Screen'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Reactive'),
            // Obx(() => Text('Count value is $count', style: TextStyle(fontSize: 20),)),
            // RaisedButton(
            //   child: Text('Increment'),
            //   onPressed: _increment,
            // ),
            // SizedBox(height: 20,),
            // Obx(() => Text('Name is ${myController.student.value.name}', style: TextStyle(fontSize: 20),)),
            // RaisedButton(
            //   child: Text('Upper Text'),
            //   onPressed: () => myController.convertToUpperCase()
            // ),
            // RaisedButton(
            //   child: Text('Lower Text'),
            //   onPressed: () => myController.convertToLowerCase()
            // ),
            GetX<SecondController>(
              // init: SecondController(),
              builder: (_) {
                return Text(
                  'The value is ${secondController.count}',
                  style: TextStyle(fontSize: 25),
                );
              },
            ),
            SizedBox(height: 20,),
            RaisedButton(
              child: Text('Increment'),
              onPressed: () => secondController.increment()
            ),
          ],
        ),
      ),
    );
  }
}