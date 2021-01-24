import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/SecondController.dart';
import 'package:get/get.dart';

class GetViewScreen extends GetView<SecondController> {
  @override
  Widget build(BuildContext context) {
  Get.put(SecondController());
  // Get.create(() => SecondController());
    return Scaffold(
      appBar: AppBar(title: Text('Get View'),),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text(
              'The value is ${controller.count}',
              style: TextStyle(fontSize: 25),
            )),
            SizedBox(height: 8),
            RaisedButton(
              child: Text('Increment'),
              onPressed: () {
                print(controller.hashCode);
                controller.increment();
              },
            ),
          ],
        ),
      ),
    );
  }
}