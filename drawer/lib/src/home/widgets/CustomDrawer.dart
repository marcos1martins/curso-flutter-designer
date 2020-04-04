import 'package:flutter/material.dart';
import 'package:drawer/src/home/widgets/HomeController.dart';

class CustomDrawer extends StatelessWidget {

  const CustomDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: StreamBuilder<int>(
        stream: HomeController.of(context).drawerChangeOutput, 
        builder: (context, snapshot) {
          return ListView(
            children: <Widget>[
              ListTile(
                selected: snapshot.data == 0,
                title: Text("Início"),
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                  HomeController.of(context).drawerChangeInput.add(0);
                },
              ),
              ListTile(
                selected: snapshot.data == 1,
                title: Text("Favoritos"),
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                  HomeController.of(context).drawerChangeInput.add(1);
                },
              ),
              ListTile(
                selected: snapshot.data == 2,
                title: Text("Conta"),
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                  HomeController.of(context).drawerChangeInput.add(2);
                },
              ),
              ListTile(
                title: Text("Sair"),
              ),
            ],
          );
        }
      ),
    );
  }
}
