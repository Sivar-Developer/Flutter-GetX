import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/ThirdController.dart';
import 'package:get/get.dart';

class ThirdReactiveScreen extends StatelessWidget {
  ThirdController thirdController = Get.put(ThirdController());

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
            GetBuilder<ThirdController>(
              id: 'txtCount',
              builder: (controller) {
                return Text(
                  'The value is ${controller.count}',
                  style: TextStyle(fontSize: 23),
                );
              }
            ),
            SizedBox(height: 16,),
            RaisedButton(
              child: Text('Increment'),
              onPressed: () => thirdController.increment()
            ),
          ],
        ),
      ),
    );
  }
}