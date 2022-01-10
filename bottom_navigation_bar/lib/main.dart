import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  List<BottomNavigationBarItem> _items;
  String _value = '';
  int _index = 0;
  

  @override
  void initState() {
    _items = new List();
    _items.add(BottomNavigationBarItem(icon: Icon(Icons.people), title: Text('People')));
    _items.add(BottomNavigationBarItem(icon: Icon(Icons.weekend), title: Text('Weekend')));
    _items.add(BottomNavigationBarItem(icon: Icon(Icons.message), title: Text('Message')));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Name here"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text(_value)
            ],
          ),
        ),
      ),
      
      bottomNavigationBar: new BottomNavigationBar(items: _items,
        fixedColor: Colors.blue, currentIndex: _index, onTap: (int item) {
        setState(() {
          _index =item;
          _value = 'Current valye is: ${_index.toString()}'
        });
        },),
    );
  }

  
}