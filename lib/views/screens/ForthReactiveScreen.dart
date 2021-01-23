import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_getx/controllers/ForthController.dart';

class ForthReactiveScreen extends StatelessWidget {
  ForthController forthController = Get.put(ForthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Reactive'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text('The value is ${forthController.count}')),
            RaisedButton(
              child: Text('Increment'),
              onPressed: () => forthController.increment(),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                onChanged: (val) {
                  forthController.increment();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}