import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List movies = [{'Date': 1577923200000, 'NOVA': 11.2899999619, 'GS': 224.8618011475},
    {'Date': 1578009600000, 'NOVA': 11.5, 'GS': 222.2324066162},
    {'Date': 1578268800000, 'NOVA': 11.4200000763, 'GS': 224.5067138672},
    {'Date': 1578355200000, 'NOVA': 11.5200004578, 'GS': 225.9845733643},
    {'Date': 1578441600000, 'NOVA': 11.529999733, 'GS': 228.1629333496},
    {'Date': 1578528000000, 'NOVA': 11.3699998856, 'GS': 232.8075866699},
    {'Date': 1578614400000, 'NOVA': 11.1800003052, 'GS': 232.3373565674},
    {'Date': 1578873600000, 'NOVA': 11.2700004578, 'GS': 235.3122253418},
    {'Date': 1578960000000, 'NOVA': 11.0900001526, 'GS': 235.7440643311},
    {'Date': 1579046400000, 'NOVA': 11.3900003433, 'GS': 235.3122253418},
    {'Date': 1579132800000, 'NOVA': 11.6700000763, 'GS': 239.6401824951},
    {'Date': 1579219200000, 'NOVA': 12.3199996948, 'GS': 239.3906860352},
    {'Date': 1579564800000, 'NOVA': 12.7100000381, 'GS': 235.7824401855},
    {'Date': 1579651200000, 'NOVA': 12.8900003433, 'GS': 237.0779571533},
    {'Date': 1579737600000, 'NOVA': 13.0399999619, 'GS': 235.6672973633},
    {'Date': 1579824000000, 'NOVA': 13.1499996185, 'GS': 232.1550140381},
    {'Date': 1580083200000, 'NOVA': 12.9099998474, 'GS': 228.5275878906},
    {'Date': 1580169600000, 'NOVA': 13.1999998093, 'GS': 232.7883911133},
    {'Date': 1580256000000, 'NOVA': 13.3100004196, 'GS': 230.4276885986},
    {'Date': 1580342400000, 'NOVA': 13.6800003052, 'GS': 234.2758331299},
    {'Date': 1580428800000, 'NOVA': 13.5799999237, 'GS': 228.1533508301},
    {'Date': 1580688000000, 'NOVA': 13.6899995804, 'GS': 229.362487793},
    {'Date': 1580774400000, 'NOVA': 14.0, 'GS': 232.1742095947},
    {'Date': 1580860800000, 'NOVA': 13.970000267, 'GS': 234.4389801025},
    {'Date': 1580947200000, 'NOVA': 14.2600002289, 'GS': 232.0590515137},

  ];

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text("Movies"),
         backgroundColor: Colors.blueGrey.shade900,
       ),
       backgroundColor: Colors.blueGrey.shade400,
       body: ListView.builder(
          itemCount: movies.length,
           itemBuilder: (BuildContext context, int index){
         return Card(
           color: Colors.white,
           child: ListTile(
             title: Text(movies[index]['Date'].toString() +'\n' + movies[index]['NOVA'].toString() + '\n' + movies[index]['GS'].toString() ),

           ),
         );
       }),
     );

  }
}
