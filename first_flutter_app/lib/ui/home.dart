import 'package:flutter/material.dart';

class ScaffoldExample extends StatelessWidget {

  _tapButton() {
    debugPrint("Tapped Button");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scaffold"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent.shade700,
        actions: <Widget>[
          IconButton(onPressed: () => debugPrint("Email Tapped!"), icon: Icon(Icons.email)),
          IconButton(onPressed: _tapButton, icon: Icon(Icons.access_alarms))
        ],
      ),
      backgroundColor: Colors.redAccent.shade100,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              child:Text("Tap me!",
                style: TextStyle(fontSize: 23.4),),
              onTap: () => debugPrint("tapped..."),

            )
          ],
        )
      )
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.deepOrange,
      child: Center(
          child: Text(
        "Hello Flutter",
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 23.4,
            fontStyle: FontStyle.italic),
      )),
    );
  }
}
