import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:power_bi_chart/charts/pipeline_series.dart';
import 'package:power_bi_chart/reports/bi_daily_sales.dart';
import 'package:power_bi_chart/reports/bi_numeric_line.dart';
import 'package:power_bi_chart/reports/bi_stacked_line.dart';

import 'package:power_bi_chart/theme/bi_theme.dart' as Theme;

List<PipelineSeries> lineData = [
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

List<PipelineSeries> lineData1 = [
  PipelineSeries(year: 0, sales: 10), //.blueGrey[400]),
  PipelineSeries(year: 1, sales: 9),
  PipelineSeries(year: 2, sales: 8),
  PipelineSeries(year: 3, sales: 7),
  PipelineSeries(year: 4, sales: 6),
  PipelineSeries(year: 5, sales: 12),
  PipelineSeries(year: 6, sales: 11),
  PipelineSeries(year: 7, sales: 5),
/*   PipelineSeries(
    year: "2012",
    subscribers: 8500000,
    barColor: ColorUtil.fromDartColor(Colors.blue),
  ), */
];

List<PipelineSeries> lineData2 = [
  PipelineSeries(year: 0, sales: 5), //.blueGrey[400]),
  PipelineSeries(year: 1, sales: 6),
  PipelineSeries(year: 2, sales: 9),
  PipelineSeries(year: 3, sales: 11),
  PipelineSeries(year: 4, sales: 8),
  PipelineSeries(year: 5, sales: 10),
  PipelineSeries(year: 6, sales: 7),
  PipelineSeries(year: 7, sales: 12),
/*   PipelineSeries(
    year: "2012",
    subscribers: 8500000,
    barColor: ColorUtil.fromDartColor(Colors.blue),
  ), */
];

class BiMutiReportPage extends StatefulWidget {
  @override
  BiMutiReportPageState createState() => BiMutiReportPageState();
}

class BiMutiReportPageState extends State<BiMutiReportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Sales Trend Report Sample'),
        backgroundColor: Theme.Colors.primaryColor,
      ),
      body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      GestureDetector(child: buildDailyReport(context)),
                      GestureDetector(child: buildMonthReport(context)),
                      GestureDetector(child: buildQuaterReport(context))
                    ],
                  ),
                  buildSalesWidgetMonthly(context),
                ]),
          )),
    );
  }

  Container buildSalesWidgetMonthly(BuildContext context) {
    return Container(
        child: Column(children: [
      Row(
        children: [buildYearReport()],
      ),
      Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.0),
          ),
          Text('Sales Trend'),
          Padding(
            padding: EdgeInsets.only(left: 250.0),
          ),
          IconButton(
              icon: Icon(FontAwesomeIcons.expandAlt, color: Colors.grey),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BiNumericLine(
                            data: lineData,
                            lineData1: lineData1,
                            lineData2: lineData2,
                          )),
                );
              })
        ],
      ),
      Row(
        children: [
          BiNumericLine(
            data: lineData,
            lineData1: lineData1,
            lineData2: lineData2,
          ),
        ],
      ),
      Row(children: [
        buildProductAReport(),
        buildProductBReport(),
        buildProductCReport()
      ]),
      Row(children: [
        buildTargetAReport(),
        buildTargetBReport(),
        buildTargetCReport()
      ])
    ]));
  }

  Card buildDailyReport(BuildContext context) {
    return Card(
        child: new InkWell(
            onTap: () {
              print("tapped");
              buildTargetCReport();
            },
            child: Container(
                child: Card(
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.white70, width: 0),
                  borderRadius: BorderRadius.circular(0)),
              child: Container(
                  height: 150,
                  width: 120,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(padding: EdgeInsets.all(3.0)),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Last Year',
                                style: TextStyle(fontSize: 14),
                              ),
                            ]),
                        Padding(padding: EdgeInsets.only(top: 5.0)),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: 75,
                                  width: 120,
                                  // padding: EdgeInsets.only(left: 2.0),
                                  child: BiStackedLine(
                                    data: lineData,
                                    lineData1: lineData1,
                                    lineData2: lineData2,
                                  ))
                            ]),
                        Padding(padding: EdgeInsets.only(top: 5.0)),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '₹ 14.9M',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                            ]),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.arrow_upward_sharp,
                                color: Colors.green,
                              ),
                              Text(
                                '₹ 9.47 M(175%)',
                                style: TextStyle(
                                    color: Colors.green, fontSize: 12),
                              ),
                            ]),
                      ])),
            ))));
  }

  buildYearReport() {
    return Container(
        child: Column(
      children: [
        Container(
            height: 100,
            child: Row(
              children: [
                Card(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 5.0),
                          ),
                          Text(
                            'Total Sales',
                            style: TextStyle(fontSize: 16.0),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 2.0),
                          ),
                          Text(
                            'All Product Combined',
                            style:
                                TextStyle(fontSize: 10.0, color: Colors.grey),
                          ),
                          IconButton(
                              icon: Icon(
                                FontAwesomeIcons.expandAlt,
                                size: 15.0,
                                color: Colors.grey,
                              ),
                              onPressed: null)
                        ],
                      ),
                      Row(children: [
                        Padding(padding: EdgeInsets.only(top: 20.0)),
                        Text('₹ 53,12,520',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 32.0)),
                      ]),
                    ],
                  ),
                ),
                Card(
                    color: Colors.red,
                    child: Column(
                      children: [
                        Container(
                            child: Row(
                          children: [
                            Text(
                              'vs. Target',
                              style: TextStyle(fontSize: 16.0),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20.0),
                            ),
                            IconButton(
                                icon: Icon(FontAwesomeIcons.expandAlt,
                                    size: 15.0, color: Colors.grey),
                                onPressed: null)
                          ],
                        )),
                        Container(
                            child: Row(children: [
                          Padding(
                              padding: EdgeInsets.only(top: 25.0, left: 5.0)),
                          Text('₹ 1,08,071',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 24.0)),
                        ])),
                      ],
                    ))
              ],
            ))
      ],
    ));
  }

  buildMonthReport(BuildContext context) {
    return Container(
        child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => buildYearReport()),
              );
            },
            child: Card(
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.white70, width: 0.5),
                  borderRadius: BorderRadius.circular(0)),
              child: Container(
                  height: 150,
                  width: 120,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(padding: EdgeInsets.all(3.0)),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Last 6 Months',
                                style: TextStyle(fontSize: 14),
                              ),
                            ]),
                        Padding(padding: EdgeInsets.only(top: 5.0)),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: 75,
                                  width: 120,
                                  // padding: EdgeInsets.only(left: 2.0),
                                  child: BiStackedLine(
                                    data: lineData,
                                    lineData1: lineData1,
                                    lineData2: lineData2,
                                  ))
                            ]),
                        Padding(padding: EdgeInsets.only(top: 5.0)),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '₹ 10.7M',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                            ]),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.arrow_upward_sharp,
                                color: Colors.green,
                              ),
                              Text(
                                '₹ 7.11 M(199%)',
                                style: TextStyle(
                                    color: Colors.green, fontSize: 12),
                              ),
                            ]),
                      ])),
            )));
  }

  buildQuaterReport(BuildContext context) {
    return Container(
        child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => buildYearReport()),
              );
            },
            child: Card(
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.white70, width: 0.5),
                  borderRadius: BorderRadius.circular(0)),
              child: Container(
                  height: 150,
                  width: 120,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(padding: EdgeInsets.all(3.0)),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Last Quarter',
                                style: TextStyle(fontSize: 14),
                              ),
                            ]),
                        Padding(padding: EdgeInsets.only(top: 5.0)),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: 75,
                                  width: 120,
                                  // padding: EdgeInsets.only(left: 2.0),
                                  child: BiStackedLine(
                                    data: lineData,
                                    lineData1: lineData1,
                                    lineData2: lineData2,
                                  ))
                            ]),
                        Padding(padding: EdgeInsets.only(top: 5.0)),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '₹ 5.11M',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                            ]),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.arrow_upward_sharp,
                                color: Colors.green,
                              ),
                              Text(
                                '₹ 3.27 M(177%)',
                                style: TextStyle(
                                    color: Colors.green, fontSize: 12),
                              ),
                            ]),
                      ])),
            )));
  }

  Container buildProductAReport() {
    return Container(
        child: Card(
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.white70, width: 0.5),
          borderRadius: BorderRadius.circular(0)),
      child: Container(
          height: 90,
          width: 120,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    'Product A',
                    style: TextStyle(fontSize: 12),
                  ),
                  Padding(padding: EdgeInsets.only(left: 15.0)),
                  IconButton(
                    icon: Icon(
                      FontAwesomeIcons.expandAlt,
                      color: Colors.grey,
                      size: 20.0,
                    ),
                    onPressed: () {},
                  ),
                ]),
                Padding(padding: EdgeInsets.only(top: 5.0)),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Padding(padding: EdgeInsets.only(top: 20.0, left: 5.0)),
                  Text('₹ 21,31,300',
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 20.0)),
                ]),
              ])),
    ));
  }

  buildProductBReport() {
    return Container(
        child: Card(
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.white70, width: 0.5),
          borderRadius: BorderRadius.circular(0)),
      child: Container(
          height: 90,
          width: 120,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    'Product B',
                    style: TextStyle(fontSize: 12),
                  ),
                  Padding(padding: EdgeInsets.only(left: 15.0)),
                  IconButton(
                    icon: Icon(FontAwesomeIcons.expandAlt,
                        color: Colors.grey, size: 20),
                    onPressed: () {},
                  ),
                ]),
                Padding(padding: EdgeInsets.only(top: 5.0)),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Padding(padding: EdgeInsets.only(top: 20.0, left: 5.0)),
                  Text('₹ 42,58,896',
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 20.0)),
                ]),
              ])),
    ));
  }

  buildProductCReport() {
    return Container(
        child: Card(
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.white70, width: 0.5),
          borderRadius: BorderRadius.circular(0)),
      child: Container(
          height: 90,
          width: 120,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    'Product C',
                    style: TextStyle(fontSize: 12),
                  ),
                  Padding(padding: EdgeInsets.only(left: 15.0)),
                  IconButton(
                    icon: Icon(FontAwesomeIcons.expandAlt,
                        color: Colors.grey, size: 20.0),
                    onPressed: () {},
                  ),
                ]),
                Padding(padding: EdgeInsets.only(top: 5.0)),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Padding(padding: EdgeInsets.only(top: 25.0, left: 5.0)),
                  Text('₹ 31,83,338',
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 20.0)),
                ]),
              ])),
    ));
  }

  buildTargetAReport() {
    return Container(
        child: Card(
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.white70, width: 0.5),
          borderRadius: BorderRadius.circular(0)),
      child: Container(
          height: 100,
          width: 120,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    'vs. Target',
                    style: TextStyle(fontSize: 12),
                  ),
                  Padding(padding: EdgeInsets.only(left: 15.0)),
                  IconButton(
                    icon: Icon(
                      FontAwesomeIcons.expandAlt,
                      color: Colors.grey,
                      size: 20.0,
                    ),
                    onPressed: () {},
                  ),
                ]),
                Padding(padding: EdgeInsets.only(top: 5.0)),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Padding(padding: EdgeInsets.only(top: 20.0, left: 5.0)),
                  Icon(Icons.file_download, color: Colors.red, size: 40.0),
                  Text('2.0%',
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 20.0)),
                ]),
              ])),
    ));
  }

  buildTargetBReport() {
    return Container(
        child: Card(
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.white70, width: 0.5),
          borderRadius: BorderRadius.circular(0)),
      child: Container(
          height: 100,
          width: 120,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    'vs. Target',
                    style: TextStyle(fontSize: 12),
                  ),
                  Padding(padding: EdgeInsets.only(left: 15.0)),
                  IconButton(
                    icon: Icon(FontAwesomeIcons.expandAlt,
                        color: Colors.grey, size: 20),
                    onPressed: () {},
                  ),
                ]),
                Padding(padding: EdgeInsets.only(top: 5.0)),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Padding(padding: EdgeInsets.only(top: 20.0, left: 5.0)),
                  Icon(Icons.file_download, color: Colors.red, size: 40.0),
                  Text('41.3%',
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 20.0)),
                ]),
              ])),
    ));
  }

  buildTargetCReport() {
    return Container(
        child: Card(
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.white70, width: 0.5),
          borderRadius: BorderRadius.circular(0)),
      child: Container(
          height: 100,
          width: 120,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    'vs. Target',
                    style: TextStyle(fontSize: 12),
                  ),
                  Padding(padding: EdgeInsets.only(left: 15.0)),
                  IconButton(
                    icon: Icon(
                      FontAwesomeIcons.expandAlt,
                      size: 20.0,
                      color: Colors.grey,
                    ),
                    onPressed: () {},
                  ),
                ]),
                Padding(padding: EdgeInsets.only(top: 5.0)),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Padding(padding: EdgeInsets.only(top: 20.0, left: 5.0)),
                  Icon(Icons.file_download, color: Colors.red, size: 40.0),
                  Text('61.0%',
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 20.0)),
                ]),
              ])),
    ));
  }
}
