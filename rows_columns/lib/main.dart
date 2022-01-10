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

  TextEditingController _user = new TextEditingController();
  TextEditingController _pass = new TextEditingController();

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
              new Text("Please Login"),
              new Row(
                children: <Widget>[
                  new Text('Username: '),
                  new Expanded(child: new TextField(controller: _user,))
                ],
              ),
              new Row(
                children: <Widget>[
                  new Text('Password: '),
                  new Expanded(child: new TextField(controller: _pass, obscureText: true,))
                ],
              ),

              new Padding(padding: new EdgeInsets.all(12.0),
                child: new RaisedButton(onPressed: () => print('Login ${_user.text}'), child: new Text('Click me'),),)
            ],
          ),
        ),
      ),
    );
  }
}