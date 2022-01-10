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
  String _value = "";

  void _OnClick(String value) => setState(() => _value = value);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Name here"),
      ),

      persistentFooterButtons: <Widget>[
        new IconButton(onPressed: () => _OnClick('Button 1'), icon: Icon(Icons.timer)),
        new IconButton(onPressed: () => _OnClick('Button 2'), icon: Icon(Icons.people)),
        new IconButton(onPressed: () => _OnClick('Button 3'), icon: Icon(Icons.map)),
      ],

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
    );
  }
}