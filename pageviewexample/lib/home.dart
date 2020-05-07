import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _currentIndex = 0;
  List<Widget> _children;
  final Key keyOne = PageStorageKey("IndexTabWidget");

  @override
  void initState() {
    _children = [
      Center(
            child: Column(
              children: <Widget>[
                Text('pagina 1'),
                TextField(
                  decoration: InputDecoration(labelText: 'Valor'),
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Valor'),
                )
              ],
            ),
          ),

          Center(
            child: Column(
              children: <Widget>[
                Text('pagina 2'),
                TextField(
                  decoration: InputDecoration(labelText: 'Valor'),
                )
              ],
            ),
          ),

          Center(
            child: Column(
              children: <Widget>[
                Text('pagina 3'),
                TextField(
                  decoration: InputDecoration(labelText: 'Valor'),
                )
              ],
            ),
          ),

          Center(
            child: Column(
              children: <Widget>[
                Text('pagina 4'),
                TextField(
                  decoration: InputDecoration(labelText: 'Valor'),
                )
              ],
            ),
          ),

          Center(
            child: Column(
              children: <Widget>[
                Text('pagina 5'),
                TextField(
                  decoration: InputDecoration(labelText: 'Valor'),
                )
              ],
            ),
          ),
    ];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageView"),
      ),
      body: _children[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        fixedColor: Colors.green,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Container(height: 0.0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Container(height: 0.0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Container(height: 0.0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_contact_calendar),
            title: Container(height: 0.0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Container(height: 0.0),
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Column buildButtonColumn(IconData icon) {
    Color color = Theme.of(context).primaryColor;

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
      ],
    );
  }
    
}
