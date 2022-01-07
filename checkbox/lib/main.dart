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

  bool _value1 = false;
  bool _value2 = false;

  void _value1Changed(bool? value) => setState(() => _value1 = value!);
  void _value2Changed(bool? value) => setState(() => _value2 = value!);

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
              new Checkbox(value: _value1, onChanged: _value1Changed),
              new CheckboxListTile(value: _value2,
                  onChanged: _value2Changed,
                title:  new Text("Hello World"),
                controlAffinity: ListTileControlAffinity.leading,
                subtitle: Text("Subtitle"),
                secondary: Icon(Icons.archive),
                activeColor: Colors.red,),
            ],
          ),
        ),
      ),
    );
  }
}