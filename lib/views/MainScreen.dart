import 'package:flutter/material.dart';
import 'package:flutter_getx/views/HomeScreen.dart';
import 'package:get/get.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            RaisedButton(
              child: Text('Snackbar'),
              onPressed: () {
                Get.snackbar(
                  "Snackbar Title",
                  "This will be Snackbar desc",
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: Colors.black87.withOpacity(0.8),
                  colorText: Colors.white,
                  duration: Duration(milliseconds: 1500),
                );
              }
            ),
            RaisedButton(
              color: Colors.amber,
              child: Text('Dialog Box'),
              onPressed: (){
                Get.defaultDialog(
                  title: 'This is me',
                  middleText: 'What ever is this',
                  radius: 20
                );
              },
            ),
            RaisedButton(
              color: Colors.redAccent,
              child: Text('Bottom Sheet'),
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    child: Wrap(
                      children: [
                        ListTile(
                          leading: Icon(Icons.wb_sunny_outlined),
                          title: Text('Light theme'),
                          onTap: () {
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.wb_sunny),
                          title: Text('Dark theme'),
                          onTap: () {
                            Get.changeTheme(ThemeData.dark());
                          },
                        ),
                      ],
                    ),
                  )
                );
              },
            ),
            RaisedButton(
              color: Colors.green,
              child: Text('Go to Home'),
              onPressed: (){
                Get.to(
                  HomeScreen(),
                  transition: Transition.fadeIn,
                  fullscreenDialog: true
                );
              },
            ),
            RaisedButton(
              color: Colors.green,
              child: Text('Go to Home Named'),
              onPressed: (){
                Get.toNamed('/home/22');
              },
            ),
            RaisedButton(
              color: Colors.green,
              child: Text('Go to Home Named'),
              onPressed: (){
                Get.toNamed('/home/22?details=whatever&content=34564');
              },
            ),
            RaisedButton(
              color: Colors.blue,
              child: Text('Go to Home Off Named'),
              onPressed: (){
                Get.offNamed('/home/50');
              },
            ),
            RaisedButton(
              color: Colors.green,
              child: Text('Go to Home'),
              onPressed: (){
                Get.to(
                  HomeScreen(),
                  transition: Transition.fadeIn,
                  fullscreenDialog: true
                );
              },
            ),
            RaisedButton(
              color: Colors.blue,
              child: Text('Go to Reactive'),
              onPressed: (){
                Get.offNamed('/reactive');
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}