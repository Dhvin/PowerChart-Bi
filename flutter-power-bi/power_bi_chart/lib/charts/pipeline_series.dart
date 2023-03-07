import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PipelineSeries {
  final String name;
  final int subscribers;
  final charts.Color barColor;
  final int font;
  final int year;
  final int sales;

  PipelineSeries(
      {this.name,
      this.subscribers,
      this.barColor,
      this.font,
      this.sales,
      this.year});
}

class PipelineChart extends StatelessWidget {
  final List<PipelineSeries> data;

  PipelineChart({@required this.data});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<PipelineSeries, String>> series = [
      charts.Series(
          id: "Subscribers",
          data: data,
          domainFn: (PipelineSeries series, _) => series.name,
          measureFn: (PipelineSeries series, _) => series.subscribers,
          colorFn: (PipelineSeries series, _) => series.barColor)
    ];

    return Container(
      height: 300,
      width: 360,
      padding: EdgeInsets.only(left: 10.0),
      child: Column(
        children: <Widget>[
          Row(
            children: [
              Text(
                "Pipeline & Active Oppourtunities",
              ),
              Padding(padding: EdgeInsets.only(left: 90.0)),
              IconButton(icon: new Icon(Icons.more_vert), onPressed: null),
            ],
          ),
          Row(children: [
            Text(
              "BY SALES PERSON",
              style: TextStyle(fontFamily: 'Helveltica'),
            ),
          ]),
          Expanded(
            child: charts.BarChart(
              series,
              animationDuration: Duration(seconds: 3),
              animate: true,
            ),
          )
        ],
      ),
    );
  }
}
