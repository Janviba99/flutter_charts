import 'package:flutter/material.dart';
import 'package:flutter_charts/Pie_chart_disc.dart';
import 'package:flutter_charts/flutter_circular_chart.dart';
import 'package:flutter_charts/pie_chart_ring.dart';
import 'package:pie_chart/pie_chart.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("pie chart"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width*1,
                height: 100,
                child: RaisedButton(
                  onPressed: (){ Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PiechartDisc()));
                  },
                  color: Colors.blue,
                  child: Text("Pie chart Disc",style: TextStyle(color: Colors.white,fontSize: 30),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width*1,
                height: 100,
                child: RaisedButton(
                  onPressed: (){ Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => piechart()));
                  },
                  color: Colors.blue,
                  child: Text("Pie chart ring",style: TextStyle(color: Colors.white,fontSize: 30)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width*1,
                height: 100,
                child: RaisedButton(
                  onPressed: (){ Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => circularchart()));
                  },
                  color: Colors.blue,
                  child: Text("Circular chart",style: TextStyle(color: Colors.white,fontSize: 30)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
