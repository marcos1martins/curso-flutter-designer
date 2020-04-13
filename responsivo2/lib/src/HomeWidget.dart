import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  int index = 0;

  _onTap(int _index, bool isPhone) {
    if (isPhone) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SecondScreen(index: _index),
        ),
      );
    } else {
      setState(
        () {
          this.index = _index;
        },
      );
    }
  }

  Widget _layoutTablet() {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: _layoutSmartphone(isPhone: false),
          ),
          Expanded(
            flex: 2,
            child: SecondScreen(
              index: index,
              isPhone: false,
            ),
          ),
        ],
      ),
    );
  }

  Widget _layoutSmartphone({bool isPhone = true}) {
    return ListView.builder(
      itemCount: 25,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text("Item número $index"),
          onTap: () {
            _onTap(index, isPhone);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Responsivo II"),
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < 750) {
          return _layoutSmartphone();
        } else {
          return _layoutTablet();
        }
      }),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final int index;
  final bool isPhone;

  const SecondScreen({Key key, this.index, this.isPhone = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: isPhone
          ? AppBar(
              title: Text("Second"),
            )
          : null,
      body: Center(
        child: Text("Item número $index"),
      ),
    );
  }
}
