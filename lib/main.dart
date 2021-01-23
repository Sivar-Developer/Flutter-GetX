import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'views/screens/screens.dart';

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
        GetPage(name: '/thirdreactive', page: () => ThirdReactiveScreen(), transition: Transition.fadeIn),
      ],
    );
  }
}


