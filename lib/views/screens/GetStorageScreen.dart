
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class GetStorageScreen extends StatelessWidget {

  var emailEditingController = TextEditingController();
  var storage = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Get Storage Screen'),),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              controller: emailEditingController,
            ),
          ),
          SizedBox(height: 8,),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: RaisedButton(
              child: Text('Write'),
              onPressed: () {
                if(GetUtils.isEmail(emailEditingController.text)) {
                  storage.write('email', emailEditingController.text);
                } else {
                  Get.snackbar(
                    'Incorrect Eamil', 'Please type a valid email',
                    colorText: Colors.white,
                    backgroundColor: Colors.black,
                    snackPosition: SnackPosition.BOTTOM
                  );
                }
              },
            ),
          ),
          SizedBox(height: 8),
          RaisedButton(
            child: Text('Read'),
            onPressed: () {
              print('The email is ${storage.read('email')}');
            }
          ),
        ],
      ),
    );
  }
}