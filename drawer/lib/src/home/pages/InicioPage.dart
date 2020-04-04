import 'package:flutter/material.dart';

import '../widgets/HomeController.dart';

class  InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text("Ir para favoritos", style: Theme.of(context).textTheme.body1,), 
        onPressed: () {
          HomeController.of(context).drawerChangeInput.add(1);
        },
      ),
    );
  }
} 