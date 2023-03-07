import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';
import 'package:power_bi_chart/bottom_bar.dart';
import 'package:power_bi_chart/charts/pipeline_series.dart';
// ignore: implementation_imports
import 'package:flutter/src/painting/basic_types.dart' as axis;
import 'package:power_bi_chart/model/bi_detail_page.dart';
import 'package:power_bi_chart/model/bi_favorites.dart';
import 'package:power_bi_chart/model/bi_multi_report.dart';
import 'package:power_bi_chart/reports/bi_daily_line.dart';
import 'package:power_bi_chart/reports/bi_daily_sales.dart';
import 'package:power_bi_chart/reports/bi_pyramid_line.dart';
import 'package:power_bi_chart/theme/bi_theme.dart' as Theme;

final List<PipelineSeries> data = [
  PipelineSeries(
    name: "Vijay",
    subscribers: 35,
    barColor: ColorUtil.fromDartColor(Colors.white), //.blueGrey[400]),
  ),
  PipelineSeries(
    name: "Ajith",
    subscribers: 55,
    barColor: ColorUtil.fromDartColor(Colors.white), //.blueGrey[400]),
  ),
  PipelineSeries(
    name: "Davis",
    subscribers: 100,
    barColor: ColorUtil.fromDartColor(Colors.white), //.blueGrey[400]),
  ),
  PipelineSeries(
    name: "Carley",
    subscribers: 75,
    barColor: ColorUtil.fromDartColor(Colors.white),
  ),
  PipelineSeries(
    name: "Michael",
    subscribers: 25,
    barColor: ColorUtil.fromDartColor(Colors.white),
  ),
  PipelineSeries(
    name: "Alan",
    subscribers: 50,
    barColor: ColorUtil.fromDartColor(Colors.white),
  ),
  PipelineSeries(
    name: "Tamil",
    subscribers: 40,
    barColor: ColorUtil.fromDartColor(Colors.white),
  ),
  PipelineSeries(
    name: "Prasanth",
    subscribers: 60,
    barColor: ColorUtil.fromDartColor(Colors.white),
  ),
];

final List<PipelineSeries> lineData = [
  PipelineSeries(year: 0, sales: 9), //.blueGrey[400]),
  PipelineSeries(year: 1, sales: 6),
  PipelineSeries(year: 2, sales: 8),
  PipelineSeries(year: 3, sales: 7),
  PipelineSeries(year: 4, sales: 9),
  PipelineSeries(year: 5, sales: 12),
  PipelineSeries(year: 6, sales: 8),
  PipelineSeries(year: 7, sales: 10),
/*   PipelineSeries(
    year: "2012",
    subscribers: 8500000,
    barColor: ColorUtil.fromDartColor(Colors.blue),
  ), */
];

class BiRetailReports extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Retail Reports'),
          backgroundColor: Theme.Colors.primaryColor,
        ),
        bottomNavigationBar: CustomBottomNavigationBar(),
        body: Container(
            margin: EdgeInsets.all(5.0),
            padding: EdgeInsets.all(5.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Row(children: [
                Text('KPIS (5)', style: TextStyle(color: Colors.grey))
              ]),
              Padding(
                padding: EdgeInsets.all(5.0),
              ),
              Expanded(
                child: GridView.count(
                    scrollDirection: axis.Axis.vertical,
                    crossAxisCount: 2,
                    childAspectRatio: 1.29,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 5,
                    children: [
                      buildDailySeries(context),
                      buildSalesPer(context),
                      buildUnitsPer(context),
                      buildSquareRoot(context),
                      buildTopStore(context),
                    ]),
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              Row(children: [
                Text('MOBILE REPORTS (5)', style: TextStyle(color: Colors.grey))
              ]),
              Padding(padding: EdgeInsets.all(10.0)),
            ])));
  }

  Container buildTopStore(BuildContext context) {
    return Container(
        child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BiMutiReportPage()),
              );
            },
            child: Card(
              color: Colors.yellowAccent[700],
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.white70, width: 0.5),
                  borderRadius: BorderRadius.circular(0)),
              child: Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                    Padding(padding: EdgeInsets.all(3.0)),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text(
                        'Top Store',
                        style: TextStyle(
                            color: Theme.Colors.bgColor, fontSize: 14),
                      ),
                    ]),
                    Padding(padding: EdgeInsets.only(top: 30.0)),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text(
                        'Nashville',
                        style: TextStyle(
                            color: Theme.Colors.bgColor, fontSize: 24),
                      ),
                    ]),
                  ])),
            )));
  }

  Container buildSquareRoot(BuildContext context) {
    return Container(
        child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BiStraightLinePage()),
              );
            },
            child: Card(
                color: Colors.lime[600],
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white70, width: 0.5),
                    borderRadius: BorderRadius.circular(0)),
                child: Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                      Padding(padding: EdgeInsets.all(3.0)),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Sales per Square Root',
                              style: TextStyle(
                                  color: Theme.Colors.bgColor, fontSize: 14),
                            ),
                          ]),
                      Row(
                        children: [
                          Padding(
                              padding:
                                  EdgeInsets.only(left: 25.0, bottom: 30.0)),
                          Text(
                            '311',
                            style: TextStyle(
                                color: Theme.Colors.backgroundColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          Padding(padding: EdgeInsets.only(left: 47.0)),
                          Text(
                            '(+2%)',
                            style: TextStyle(
                                color: Theme.Colors.backgroundColor,
                                fontSize: 16),
                          ),
                        ],
                      ),
                      Row(children: [
                        Container(
                            height: 75,
                            width: 150,
                            padding: EdgeInsets.only(left: 5.0),
                            child: BiDailyLine(
                              data: lineData,
                            ))
                      ])
                    ])))));
  }

  Container buildUnitsPer(BuildContext context) {
    return Container(
        child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BiLineStackedPage()),
              );
            },
            child: Card(
                color: Colors.red,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white70, width: 0.5),
                    borderRadius: BorderRadius.circular(0)),
                child: Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                      Padding(padding: EdgeInsets.all(3.0)),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Avg. Units per Custom',
                              style: TextStyle(
                                  color: Theme.Colors.bgColor, fontSize: 14),
                            ),
                          ]),
                      Row(
                        children: [
                          Padding(
                              padding:
                                  EdgeInsets.only(left: 25.0, bottom: 30.0)),
                          Text(
                            ' 2.87 ',
                            style: TextStyle(
                                color: Theme.Colors.backgroundColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          Padding(padding: EdgeInsets.only(left: 47.0)),
                          Text(
                            '(-10%)',
                            style: TextStyle(
                                color: Theme.Colors.backgroundColor,
                                fontSize: 16),
                          ),
                        ],
                      ),
                      Row(children: [
                        Container(
                            height: 55,
                            width: 150,
                            padding: EdgeInsets.only(left: 5.0),
                            child: BiPyramidLine(
                              data: lineData,
                            ))
                      ])
                    ])))));
  }

  Container buildSalesPer(BuildContext context) {
    return Container(
        child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BiDailyDetailPage()),
              );
            },
            child: Card(
                color: Colors.yellowAccent[700],
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white70, width: 0.5),
                    borderRadius: BorderRadius.circular(0)),
                child: Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                      Padding(padding: EdgeInsets.all(3.0)),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Avg. Sales Per Custom',
                              style: TextStyle(
                                  color: Theme.Colors.bgColor, fontSize: 14),
                            ),
                          ]),
                      Row(
                        children: [
                          Padding(
                              padding:
                                  EdgeInsets.only(left: 25.0, bottom: 30.0)),
                          Text(
                            '42.4',
                            style: TextStyle(
                                color: Theme.Colors.backgroundColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          Padding(padding: EdgeInsets.only(left: 35.0)),
                          Text(
                            '(-4%)',
                            style: TextStyle(
                                color: Theme.Colors.backgroundColor,
                                fontSize: 16),
                          ),
                        ],
                      ),
                      Row(children: [
                        Container(
                            height: 75,
                            width: 150,
                            padding: EdgeInsets.only(left: 5.0),
                            child: BiDailySales(
                              data: data,
                            ))
                      ])
                    ])))));
  }

  Container buildDailySeries(BuildContext context) {
    return Container(
        child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BiDailyDetailPage()),
              );
            },
            child: Card(
                color: Colors.green[400],
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white70, width: 0.5),
                    borderRadius: BorderRadius.circular(0)),
                child: Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                      Padding(padding: EdgeInsets.all(3.0)),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Avg. Dialy Sales',
                              style: TextStyle(
                                  color: Theme.Colors.bgColor, fontSize: 14),
                            ),
                          ]),
                      Row(
                        children: [
                          Padding(
                              padding:
                                  EdgeInsets.only(left: 25.0, bottom: 30.0)),
                          Text(
                            '13521',
                            style: TextStyle(
                                color: Theme.Colors.backgroundColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          Padding(padding: EdgeInsets.only(left: 35.0)),
                          Text(
                            '(+8%)',
                            style: TextStyle(
                                color: Theme.Colors.backgroundColor,
                                fontSize: 16),
                          ),
                        ],
                      ),
                      Row(children: [
                        Container(
                            height: 75.0,
                            width: 150,
                            padding: EdgeInsets.only(left: 5.0),
                            child: BiDailySales(
                              data: data,
                            ))
                      ])
                    ]))
                //   color: Colors.lightGreen[300],
                )));
  }
}
