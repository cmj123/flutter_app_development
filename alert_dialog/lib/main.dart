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

  Future _showAlert(BuildContext context, String message) async {
    return showDialog(
        context: context,
        child: new AlertDialog(title: new Text(message),
        actions: <Widget>[
          new FlatButton(onPressed: () => Navigator.pop(context), child: new Text("oka"))
        ],
        )
    );
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
              new Text("Hello World"),
              new FlatButton(onPressed: () => _showAlert(context, 'Do you like flutter, I do!'),
                  child: new Text('Click me'))
            ],
          ),
        ),
      ),
    );
  }
}