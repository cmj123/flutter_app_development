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
  
  void _showBottom(){
    showModalBottomSheet(
        context: context, 
        builder: (BuildContext context){
          return new Container(
            padding: new EdgeInsets.all(15.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text('Some info here', style: new TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                new RaisedButton(onPressed: ()=> Navigator.pop(context), child: new Text('Close'),)
              ],
            ),
          );
        }
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
              new Text("Add Weights Here"),
              new RaisedButton(onPressed: _showBottom, child: new Text('Click me'),)
            ],
          ),
        ),
      ),
    );
  }
}