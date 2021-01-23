import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(Get.parameters['id']),
            Text(Get.parameters['details'].isNullOrBlank ? '' : Get.parameters['details']),
            Text(Get.parameters['content'].isNullOrBlank ? '' : Get.parameters['content']),
          ],
        ),
      ),
    );
  }
}