import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './screen_app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xff7a6b8c),
    ));
    return MaterialApp(debugShowCheckedModeBanner: false, home: ScreenApp());
  }
}
