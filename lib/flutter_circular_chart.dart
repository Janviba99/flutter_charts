import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';

class circularchart  extends StatefulWidget{

  @override
  _circularchartState createState() => _circularchartState();

}

class _circularchartState extends State<circularchart>{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("flutter charts"),
      ),
      body: Container(
        child: new AnimatedCircularChart(
            size: Size(300, 300),
            duration: Duration(milliseconds: 2000),
            holeLabel: "progress",
            chartType: CircularChartType.Radial,
            labelStyle: TextStyle(
                fontSize: 20,
                color: Colors.black
            ),
            initialChartData: <CircularStackEntry>[
              new CircularStackEntry([
                new CircularSegmentEntry(60, Colors.green,rankKey: "completed"),
                new CircularSegmentEntry(40, Colors.grey,rankKey: "remaining")
              ]),
            ]
        ),
      ),
    );
  }
}