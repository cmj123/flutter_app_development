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
  
  final GlobalKey<ScaffoldState> _scaffoldstate = new GlobalKey<ScaffoldState>();
  
  void _showbar(){
    _scaffoldstate.currentState.showSnackBar(new SnackBar(content: new Text('Hello World')));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldstate,
      appBar: new AppBar(
        title: new Text("Snack Bar"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text("Hello World"),
              new RaisedButton(onPressed: _showbar, child: new Text('Click me'),)
            ],
          ),
        ),
      ),
    );
  }
}