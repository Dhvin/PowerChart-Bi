import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';
import 'package:power_bi_chart/bottom_bar.dart';
import 'package:power_bi_chart/charts/bar_line_chart.dart';
import 'package:power_bi_chart/charts/hor_line.dart';
import 'package:power_bi_chart/charts/horpipe_chart.dart';
import 'package:power_bi_chart/charts/line_chart.dart';
import 'package:power_bi_chart/charts/pie_chart.dart';
import 'package:power_bi_chart/charts/pipeline_series.dart';

import 'package:power_bi_chart/theme/bi_theme.dart' as Theme;

final List<PipelineSeries> data = [
  PipelineSeries(
    name: "Davis",
    subscribers: 100,
    barColor: ColorUtil.fromDartColor(Colors.teal[400]), //.blueGrey[400]),
  ),
  PipelineSeries(
    name: "Carley",
    subscribers: 75,
    barColor: ColorUtil.fromDartColor(Colors.teal[400]),
  ),
  PipelineSeries(
    name: "Michael",
    subscribers: 25,
    barColor: ColorUtil.fromDartColor(Colors.teal[400]),
  ),
  PipelineSeries(
    name: "Alan",
    subscribers: 50,
    barColor: ColorUtil.fromDartColor(Colors.teal[400]),
  ),
/*   PipelineSeries(
    year: "2012",
    subscribers: 8500000,
    barColor: ColorUtil.fromDartColor(Colors.blue),
  ), */
];
final List<PipelineSeries> horData = [
  PipelineSeries(
    name: "Davis",
    subscribers: 75,
    barColor: ColorUtil.fromDartColor(Colors.red[400]), //.blueGrey[400]),
  ),
  PipelineSeries(
    name: "Carley",
    subscribers: 25,
    barColor: ColorUtil.fromDartColor(Colors.red[400]),
  ),
  PipelineSeries(
    name: "Michael",
    subscribers: 100,
    barColor: ColorUtil.fromDartColor(Colors.red[400]),
  ),
  PipelineSeries(
    name: "Alan",
    subscribers: 50,
    barColor: ColorUtil.fromDartColor(Colors.red[400]),
  ),
/*   PipelineSeries(
    year: "2012",
    subscribers: 8500000,
    barColor: ColorUtil.fromDartColor(Colors.blue),
  ), */
];

final List<PipelineSeries> horiData = [
  PipelineSeries(
    name: "Davis",
    subscribers: 35,
    barColor: ColorUtil.fromDartColor(Colors.black), //.blueGrey[400]),
  ),
  PipelineSeries(
    name: "Carley",
    subscribers: 55,
    barColor: ColorUtil.fromDartColor(Colors.black),
  ),
  PipelineSeries(
    name: "Michael",
    subscribers: 85,
    barColor: ColorUtil.fromDartColor(Colors.black),
  ),
  PipelineSeries(
    name: "Alan",
    subscribers: 40,
    barColor: ColorUtil.fromDartColor(Colors.black),
  ),
/*   PipelineSeries(
    year: "2012",
    subscribers: 8500000,
    barColor: ColorUtil.fromDartColor(Colors.blue),
  ), */
];

final List<PipelineSeries> pieData = [
  PipelineSeries(
      name: "Davis",
      font: 3,
      barColor: ColorUtil.fromDartColor(Colors.green[400])), //.blueGrey[400]),
  PipelineSeries(
      name: "Michael",
      font: 5,
      barColor: ColorUtil.fromDartColor(Colors.teal[400])),
  PipelineSeries(
      name: "Carley", font: 7, barColor: ColorUtil.fromDartColor(Colors.red)),
  PipelineSeries(
      name: "Alan", font: 28, barColor: ColorUtil.fromDartColor(Colors.black)),
/*   PipelineSeries(
    year: "2012",
    subscribers: 8500000,
    barColor: ColorUtil.fromDartColor(Colors.blue),
  ), */
];

final List<PipelineSeries> lineData = [
  PipelineSeries(year: 0, sales: 5), //.blueGrey[400]),
  PipelineSeries(year: 1, sales: 7),
  PipelineSeries(year: 2, sales: 4),
  PipelineSeries(year: 3, sales: 12),
/*   PipelineSeries(
    year: "2012",
    subscribers: 8500000,
    barColor: ColorUtil.fromDartColor(Colors.blue),
  ), */
];
final List<PipelineSeries> dataline = [
  PipelineSeries(year: 0, sales: 6), //.blueGrey[400]),
  PipelineSeries(year: 1, sales: 9),
  PipelineSeries(year: 2, sales: 2),
  PipelineSeries(year: 3, sales: 10),
/*   PipelineSeries(
    year: "2012",
    subscribers: 8500000,
    barColor: ColorUtil.fromDartColor(Colors.blue),
  ), */
];

final List<PipelineSeries> barData = [
  PipelineSeries(
    name: "Davis",
    year: 2008,
    subscribers: 70,
    barColor: ColorUtil.fromDartColor(Colors.red[400]), //.blueGrey[400]),
  ),
  PipelineSeries(
    name: "Dhivin",
    year: 2009,
    subscribers: 75,
    barColor: ColorUtil.fromDartColor(Colors.red[400]),
  ),
  PipelineSeries(
    name: "Arvind",
    year: 2010,
    subscribers: 25,
    barColor: ColorUtil.fromDartColor(Colors.red[400]),
  ),
  PipelineSeries(
    name: "Bala",
    year: 2011,
    subscribers: 50,
    barColor: ColorUtil.fromDartColor(Colors.red[400]),
  ),
  PipelineSeries(
    name: "Chris",
    year: 2012,
    subscribers: 40,
    barColor: ColorUtil.fromDartColor(Colors.red[400]),
  ),
  PipelineSeries(
    name: "Elan",
    year: 2013,
    subscribers: 60,
    barColor: ColorUtil.fromDartColor(Colors.red[400]),
  ),
  PipelineSeries(
    name: "Hari",
    year: 2014,
    subscribers: 30,
    barColor: ColorUtil.fromDartColor(Colors.red[400]),
  ),
  PipelineSeries(
    name: "Iniyan",
    year: 2015,
    subscribers: 35,
    barColor: ColorUtil.fromDartColor(Colors.red[400]),
  ),
  PipelineSeries(
    name: "Jack",
    year: 2016,
    subscribers: 65,
    barColor: ColorUtil.fromDartColor(Colors.red[400]),
  ),
];

final List<PipelineSeries> barData1 = [
  PipelineSeries(
    name: "Davis",
    year: 2008,
    subscribers: 40,
    barColor: ColorUtil.fromDartColor(Colors.black), //.blueGrey[400]),
  ),
  PipelineSeries(
    name: "Dhivin",
    year: 2009,
    subscribers: 75,
    barColor: ColorUtil.fromDartColor(Colors.black),
  ),
  PipelineSeries(
    name: "Arvind",
    year: 2010,
    subscribers: 25,
    barColor: ColorUtil.fromDartColor(Colors.black),
  ),
  PipelineSeries(
    name: "Bala",
    year: 2011,
    subscribers: 50,
    barColor: ColorUtil.fromDartColor(Colors.black),
  ),
  PipelineSeries(
    name: "Chris",
    year: 2012,
    subscribers: 85,
    barColor: ColorUtil.fromDartColor(Colors.black),
  ),
  PipelineSeries(
    name: "Elan",
    year: 2013,
    subscribers: 55,
    barColor: ColorUtil.fromDartColor(Colors.black),
  ),
  PipelineSeries(
    name: "Hari",
    year: 2014,
    subscribers: 65,
    barColor: ColorUtil.fromDartColor(Colors.black),
  ),
  PipelineSeries(
    name: "Iniyan",
    year: 2015,
    subscribers: 60,
    barColor: ColorUtil.fromDartColor(Colors.black),
  ),
  PipelineSeries(
    name: "Jack",
    year: 2016,
    subscribers: 45,
    barColor: ColorUtil.fromDartColor(Colors.black),
  )
];
final List<PipelineSeries> barData2 = [
  PipelineSeries(
    name: "Davis",
    year: 2008,
    subscribers: 60,
    barColor: ColorUtil.fromDartColor(Colors.teal[400]), //.blueGrey[400]),
  ),
  PipelineSeries(
    name: "Dhivin",
    year: 2009,
    subscribers: 75,
    barColor: ColorUtil.fromDartColor(Colors.teal[400]),
  ),
  PipelineSeries(
    name: "Arvind",
    year: 2010,
    subscribers: 25,
    barColor: ColorUtil.fromDartColor(Colors.teal[400]),
  ),
  PipelineSeries(
    name: "Bala",
    year: 2011,
    subscribers: 50,
    barColor: ColorUtil.fromDartColor(Colors.teal[400]),
  ),
  PipelineSeries(
    name: "Chris",
    year: 2012,
    subscribers: 35,
    barColor: ColorUtil.fromDartColor(Colors.teal[400]),
  ),
  PipelineSeries(
    name: "Elan",
    year: 2013,
    subscribers: 85,
    barColor: ColorUtil.fromDartColor(Colors.teal[400]),
  ),
  PipelineSeries(
    name: "Hari",
    year: 2014,
    subscribers: 60,
    barColor: ColorUtil.fromDartColor(Colors.teal[400]),
  ),
  PipelineSeries(
    name: "Iniyan",
    year: 2015,
    subscribers: 45,
    barColor: ColorUtil.fromDartColor(Colors.teal[400]),
  ),
  PipelineSeries(
    name: "Jack",
    year: 2016,
    subscribers: 60,
    barColor: ColorUtil.fromDartColor(Colors.teal[400]),
  ),
];

class PowerBiPage extends StatefulWidget {
  @override
  _PowerBiPageState createState() => _PowerBiPageState();
}

class _PowerBiPageState extends State<PowerBiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[50],
        appBar: AppBar(
          title: Text('Sales'),
          backgroundColor: Theme.Colors.primaryColor,
        ),
        bottomNavigationBar: CustomBottomNavigationBar(),
        body: SingleChildScrollView(
            child: Container(
                margin: EdgeInsets.all(15.0),
                child: Column(children: <Widget>[
                  activeOpp(),
                  totalPro(),
                  wonMonth(),
                  lossMonth(),
                  Card(
                      child: PipelineChart(
                    data: data,
                  )),
                  Card(
                      child: PieChartSeries(
                    data: pieData,
                  )),
                  Card(
                      child:
                          LineChartSeries(data: lineData, pieData: dataline)),
                  Card(
                      child: HorizontalChart(
                          data: data, horData: horiData, horiData: horData)),
                  Card(
                      child: HorilineChart(
                    data: data,
                  )),

                  Card(
                      child: BarLineStackChart(
                          data: barData,
                          barData1: barData1,
                          barData2: barData2)),
                  Card(
                      child: PipelineChart(
                    data: barData2,
                  )),

                  //BarChart(series, animate: true),
                ]))));
  }

  Card lossMonth() {
    return Card(
        child: Container(
            height: 200,
            width: 350,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    Text(
                      "  Loss This Month ",
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 16.0),
                    ),
                    Padding(padding: EdgeInsets.only(left: 170.0)),
                    IconButton(
                        icon: new Icon(Icons.more_vert), onPressed: null),
                  ],
                ),
                Padding(padding: EdgeInsets.only(left: 50.0, top: 70.0)),
                Center(
                    child: Text(
                  " 6 ",
                  style: TextStyle(fontFamily: 'Segoe UI', fontSize: 44.0),
                )),
              ],
            )));
  }

  Card wonMonth() {
    return Card(
        child: Container(
            height: 200,
            width: 350,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    Text(
                      "  Won this Month ",
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 16.0),
                    ),
                    Padding(padding: EdgeInsets.only(left: 175.0)),
                    IconButton(
                        icon: new Icon(Icons.more_vert), onPressed: null),
                  ],
                ),
                Padding(padding: EdgeInsets.only(left: 50.0, top: 70.0)),
                Center(
                    child: Text(
                  " 3 ",
                  style: TextStyle(fontFamily: 'Segoe UI', fontSize: 44.0),
                )),
              ],
            )));
  }

  Card totalPro() {
    return Card(
        child: Container(
            height: 200,
            width: 350,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    Text(
                      "  Total Projected ",
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 16.0),
                    ),
                    Padding(padding: EdgeInsets.only(left: 180.0)),
                    IconButton(
                        icon: new Icon(Icons.more_vert), onPressed: null),
                  ],
                ),
                Padding(padding: EdgeInsets.only(left: 50.0, top: 70.0)),
                Center(
                    child: Text(
                  " ₹12M ",
                  style: TextStyle(fontFamily: 'Segoe UI', fontSize: 44.0),
                )),
              ],
            )));
  }

  Card activeOpp() {
    return Card(
        child: Container(
            height: 200,
            width: 350,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    Text(
                      "  Active Opportunities ",
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 16.0),
                    ),
                    Padding(padding: EdgeInsets.only(left: 140.0)),
                    IconButton(
                        icon: new Icon(Icons.more_vert), onPressed: null),
                  ],
                ),
                Padding(padding: EdgeInsets.only(left: 50.0, top: 70.0)),
                Center(
                    child: Text(
                  " 60 ",
                  style: TextStyle(fontFamily: 'Segoe UI', fontSize: 44.0),
                )),
              ],
            )));
  }
}
