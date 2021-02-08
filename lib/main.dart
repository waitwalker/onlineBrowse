import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screen_orientation/flutter_screen_orientation.dart';

import 'home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterScreenOrientation.instance().init();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '网校浏览器',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

