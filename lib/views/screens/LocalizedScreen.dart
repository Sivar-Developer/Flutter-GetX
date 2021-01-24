import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/LocaleController.dart';
import 'package:get/get.dart';

class LocalizedScreen extends StatelessWidget {

  LocaleController localeController = Get.put(LocaleController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Localization'),),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('hello'.tr, style: TextStyle(fontSize: 50, color: Colors.blueAccent, fontWeight: FontWeight.bold),),
            SizedBox(height: 25,),
            RaisedButton(
              child: Text('English'),
              onPressed: () => localeController.changeLanguage('en', 'US')
            ),
            RaisedButton(
              child: Text('Arabic'),
              onPressed: () => localeController.changeLanguage('ar', 'AR')
            ),
            RaisedButton(
              child: Text('Kurdish - Sorani'),
              onPressed: () => localeController.changeLanguage('ku_sorani', 'KU')
            ),
            RaisedButton(
              child: Text('Kurdish - Badini'),
              onPressed: () => localeController.changeLanguage('ku_badini', 'KU')
            ),
          ],
        ),
      ),
    );
  }
}