import 'package:flutter/material.dart';
import 'package:drawer/src/home/HomeWidget.dart';
import 'package:drawer/src/home/widgets/HomeController.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Drawer',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomeController(child: HomeWidget()),
    );
  }
}