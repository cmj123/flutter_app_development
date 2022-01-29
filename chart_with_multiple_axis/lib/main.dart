import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

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
  late List<SalesData> _chartData;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _chartData = getChartData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SfCartesianChart(
        legend: Legend(isVisible: true),
        primaryXAxis: CategoryAxis(title: AxisTitle(text: 'Primary X Axis')),
        primaryYAxis: CategoryAxis(
            title: AxisTitle(text: 'Primary Y axis (sales in USD Million')),
        axes: <ChartAxis>[
          CategoryAxis(
              name: 'xAxis',
              title: AxisTitle(text: 'Secondary X axis'),
              opposedPosition: true),
          NumericAxis(
              name: 'yAxis',
              title:
                  AxisTitle(text: 'Secondary Y Axis (Profit in USD Millions'),
              opposedPosition: true,
              interval: 5)
        ],
        series: <CartesianSeries>[
          LineSeries<SalesData, String>(
              name: 'Sales',
              dataSource: _chartData,
              xValueMapper: (SalesData sales, _) => sales.salesMonth,
              yValueMapper: (SalesData sales, _) => sales.sales),
          LineSeries<SalesData, String>(
              name:'Profit',
              dataSource: _chartData,
              xValueMapper: (SalesData sales, _) => sales.salesMonth,
              yValueMapper: (SalesData sales, _) => sales.profit,
              // xAxisName: 'xAxis',
              yAxisName: 'yAxis',
          )
        ],

      ),
    ));
  }

  List<SalesData> getChartData() {
    return <SalesData>[
      SalesData('Jan', 35, 1588),
      SalesData('Feb', 28, 1700),
      SalesData('Mar', 34, 2100),
      SalesData('Apr', 32, 2200),
      SalesData('May', 40, 2800),
    ];
  }
}

class SalesData {
  final String salesMonth;
  final double sales;
  final double profit;

  SalesData(this.salesMonth, this.sales, this.profit);
}
