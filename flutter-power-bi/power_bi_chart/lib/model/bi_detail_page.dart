import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';
import 'package:power_bi_chart/charts/pipeline_series.dart';
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

class BiDailyDetailPage extends StatefulWidget {
  @override
  BiDailyDetailPageState createState() => BiDailyDetailPageState();
}

class BiDailyDetailPageState extends State<BiDailyDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,
      appBar: AppBar(
        title: Text('Sales Detail'),
        backgroundColor: Theme.Colors.primaryColor,
      ),
      body: (Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [buildDailySeries(context)],
        ),
      )),
    );
  }

  Container buildDailySeries(BuildContext context) {
    return Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
          Padding(padding: EdgeInsets.all(3.0)),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Avg. Dialy Sales',
              style: TextStyle(color: Theme.Colors.bgColor, fontSize: 24),
            ),
          ]),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 125.0, bottom: 30.0)),
              Text(
                '13521',
                style: TextStyle(
                    color: Theme.Colors.backgroundColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              Padding(padding: EdgeInsets.only(left: 35.0)),
              Text(
                '(+8%)',
                style: TextStyle(
                    color: Theme.Colors.backgroundColor, fontSize: 18),
              ),
            ],
          ),
          Row(children: [
            Container(
                height: 200.0,
                padding: EdgeInsets.all(10.0),
                child: BiDailySales(
                  data: data,
                ))
          ])
        ]));
  }
}

class BiLineStackedPage extends StatefulWidget {
  @override
  BiLineStackedPageState createState() => BiLineStackedPageState();
}

class BiLineStackedPageState extends State<BiLineStackedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,
      appBar: AppBar(
        title: Text('Sales Detail'),
        backgroundColor: Theme.Colors.primaryColor,
      ),
      body: (Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [buildStackedSeries(context)],
        ),
      )),
    );
  }

  Container buildStackedSeries(BuildContext context) {
    return Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
          Padding(padding: EdgeInsets.all(3.0)),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Avg. Dialy Sales',
              style: TextStyle(color: Theme.Colors.bgColor, fontSize: 24),
            ),
          ]),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 125.0, bottom: 30.0)),
              Text(
                '13521',
                style: TextStyle(
                    color: Theme.Colors.backgroundColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              Padding(padding: EdgeInsets.only(left: 35.0)),
              Text(
                '(+8%)',
                style: TextStyle(
                    color: Theme.Colors.backgroundColor, fontSize: 18),
              ),
            ],
          ),
          Row(children: [
            Container(
                height: 200.0,
                padding: EdgeInsets.all(10.0),
                child: BiPyramidLine(
                  data: lineData,
                ))
          ])
        ]));
  }
}

class BiStraightLinePage extends StatefulWidget {
  @override
  BiStraightLinePageState createState() => BiStraightLinePageState();
}

class BiStraightLinePageState extends State<BiStraightLinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,
      appBar: AppBar(
        title: Text('Sales Detail'),
        backgroundColor: Theme.Colors.primaryColor,
      ),
      body: (Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [buildLineSeries(context)],
        ),
      )),
    );
  }

  Container buildLineSeries(BuildContext context) {
    return Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
          Padding(padding: EdgeInsets.all(3.0)),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Avg. Dialy Sales',
              style: TextStyle(color: Theme.Colors.bgColor, fontSize: 24),
            ),
          ]),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 125.0, bottom: 30.0)),
              Text(
                '13521',
                style: TextStyle(
                    color: Theme.Colors.backgroundColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              Padding(padding: EdgeInsets.only(left: 35.0)),
              Text(
                '(+8%)',
                style: TextStyle(
                    color: Theme.Colors.backgroundColor, fontSize: 18),
              ),
            ],
          ),
          Row(children: [
            Container(
                height: 200.0,
                padding: EdgeInsets.all(10.0),
                child: BiDailyLine(
                  data: lineData,
                ))
          ])
        ]));
  }
}
