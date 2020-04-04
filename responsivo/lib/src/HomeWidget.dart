import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    Size size = mediaQuery.size;

    double _getValue({double value, double max, double min}) {
      if (value < max && value > min) {return value;}
      if (value <= min) {
        return min;
      } else {
        return max; 
      }
      
      
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Responsivo"),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
              minWidth: 200, maxWidth: 400, minHeight: 200, maxHeight: 400),
          child: Container(
            width: size.width * 0.50,
            height: size.width * 0.50,
            color: Colors.red,
            alignment: Alignment.center,
            child: Text(
              "Largura = ${size.width.toStringAsFixed(2)} \n Autura = ${size.height.toStringAsFixed(2)}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: _getValue(
                  value: size.width * 0.03,
                  max: 24,
                  min: 12,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
