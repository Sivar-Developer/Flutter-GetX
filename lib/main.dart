import 'package:flutter/material.dart';
import 'package:flutter_getx/Messages.dart';
import 'package:flutter_getx/services/Service.dart';
import 'package:flutter_getx/views/screens/Screens.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  await initServices();
  runApp(MyApp());
}

Future<void> initServices() async {
  print('Starting services...');
  await Get.putAsync<Service>(() async => Service());
  print('All services started...');
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      title: 'Internationalization',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => MainScreen(title: 'Main')),
        GetPage(name: '/home/:id', page: () => HomeScreen(), transition: Transition.fadeIn),
        GetPage(name: '/reactive', page: () => ReactiveScreen(), transition: Transition.fadeIn),
        GetPage(name: '/thirdreactive', page: () => ThirdReactiveScreen(), transition: Transition.fadeIn),
        GetPage(name: '/forthreactive', page: () => ForthReactiveScreen(), transition: Transition.fadeIn),
        GetPage(name: '/localized', page: () => LocalizedScreen(), transition: Transition.fadeIn),
        GetPage(name: '/services', page: () => ServiceScreen(), transition: Transition.fadeIn),
        GetPage(name: '/products/list', page: () => ProductsScreen(), transition: Transition.fadeIn),
        GetPage(name: '/storage', page: () => GetStorageScreen(), transition: Transition.fadeIn),
        GetPage(name: '/getview', page: () => GetViewScreen(), transition: Transition.fadeIn),
      ],
    );
  }
}


