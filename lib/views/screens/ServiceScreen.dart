import 'package:flutter/material.dart';
import 'package:flutter_getx/services/Service.dart';
import 'package:get/get.dart';

class ServiceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Service Screen'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('Increment'),
              onPressed: () => Get.find<Service>().incrementCounter(),
            ),
          ],
        ),
      ),
    );
  }
}