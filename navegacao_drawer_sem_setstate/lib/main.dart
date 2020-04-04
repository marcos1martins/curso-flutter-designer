import 'package:flutter/material.dart';
import 'package:navegacao_drawer_comsetstate/src/home/HomeWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter navigation',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomeWidget(),
    );
  }
}