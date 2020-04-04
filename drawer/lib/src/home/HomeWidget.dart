import 'package:flutter/material.dart';
import 'package:drawer/src/home/pages/ContaPage.dart';
import 'package:drawer/src/home/pages/FavoritosPage.dart';
import 'package:drawer/src/home/pages/InicioPage.dart';
import 'package:drawer/src/home/widgets/CustomDrawer.dart';
import 'package:drawer/src/home/widgets/HomeController.dart';

import 'package:rxdart/rxdart.dart';

import 'widgets/CustomDrawer.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {

  var pages = <Widget>[
    InicioPage(),
    FavoritosPage(),
    ContaPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
        appBar: AppBar(title: Text("Flutter Drawer"),),
        body: StreamBuilder<int>(
          initialData: 0,
          stream: HomeController.of(context).drawerChangeOutput, 
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            return pages[snapshot.data];
          },
        ),
    );
  }
}