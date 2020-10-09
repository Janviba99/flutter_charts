import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class PiechartDisc  extends StatefulWidget{

  @override
  _PiechartDiscState createState() => _PiechartDiscState();

}

class _PiechartDiscState extends State<PiechartDisc>{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("pie charts"),
      ),
      body: Container(
        child:PieChart(
          dataMap: {"Fluuter":5,"Maths":2,"English":7,"Android":4},
          chartRadius: 300,
          colorList: [Colors.red,Colors.green,Colors.grey[500],Colors.orange],
          chartValuesOptions: ChartValuesOptions(
              chartValueStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,color: Colors.black
              ),
              showChartValueBackground: false,
              showChartValuesInPercentage: true
          ),
          legendOptions: LegendOptions(
              legendTextStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
              legendPosition: LegendPosition.right,
              showLegends: true
          ),
          animationDuration: Duration(milliseconds: 2000),
        ),
      ),
    );
  }
}