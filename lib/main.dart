import 'package:flutter/material.dart';
import 'package:flutter_getx/views/HomeScreen.dart';
import 'package:flutter_getx/views/MainScreen.dart';
import 'package:flutter_getx/views/ReactiveScreen.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => MainScreen(title: 'Main')),
        GetPage(name: '/home/:id', page: () => HomeScreen(), transition: Transition.fadeIn),
        GetPage(name: '/reactive', page: () => ReactiveScreen(), transition: Transition.fadeIn),
      ],
    );
  }
}


