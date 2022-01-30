import 'package:flutter/material.dart';
import 'package:tabbarview/ui/first_page.dart';
import 'package:tabbarview/ui/second_page.dart';
import 'package:tabbarview/ui/third_page.dart';

void main() {
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
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('TabBar'),
            centerTitle: true,
            bottom: TabBar(
              tabs: [
                Tab(
                  text: 'Tab 1',
                  icon: Icon(Icons.home),
                ),
                Tab(
                  text: 'Tab 2',
                  icon: Icon(Icons.star),
                ),
                Tab(
                  text: 'Tab 3',
                  icon: Icon(Icons.person),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              FirstPage(),
              SecondPage(),
              ThirdPage(),
            ],
          ),
        )
    );
  }
}
