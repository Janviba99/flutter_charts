import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class piechart  extends StatefulWidget{

  @override
  _piechartState createState() => _piechartState();

}

class _piechartState extends State<piechart>{
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
          chartType: ChartType.ring,
          centerText: "pie chart",
          colorList: [Colors.red,Colors.green,Colors.grey[500],Colors.orange],
          chartValuesOptions: ChartValuesOptions(
              chartValueStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,color: Colors.black
              ),
              showChartValueBackground: false,
              showChartValuesInPercentage: true,
            showChartValuesOutside: true
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