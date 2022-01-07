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

  int _value = 0;

  void _add(){
    setState(() {
      _value++;
    });
  }

  void _substract(){
    setState(() {
      _value--;
    });
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
              new Text("Value = ${_value}"),
              new IconButton(onPressed: _add, icon: new Icon(Icons.add), ),
              new IconButton(onPressed: _substract, icon: new Icon(Icons.remove))
            ],
          ),
        ),
      ),
    );
  }
}