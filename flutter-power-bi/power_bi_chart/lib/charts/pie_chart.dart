import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:power_bi_chart/charts/pipeline_series.dart';

class PieChartSeries extends StatelessWidget {
  final List<PipelineSeries> data;

  PieChartSeries({@required this.data});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<PipelineSeries, String>> series = [
      charts.Series(
          id: "Subscribers",
          data: data,
          domainFn: (PipelineSeries series, _) => series.name,
          measureFn: (PipelineSeries series, _) => series.font,
          colorFn: (series, _) => series.barColor),
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
                "Pipeline",
              ),
              Padding(padding: EdgeInsets.only(left: 245.0)),
              IconButton(icon: new Icon(Icons.more_vert), onPressed: null),
            ],
          ),
          Row(children: [
            Text(
              "By Oppourtunities Size",
              style: TextStyle(fontFamily: 'Helveltica'),
            ),
          ]),
          Expanded(
            child: charts.PieChart(
              series,
              animate: true,
              animationDuration: Duration(seconds: 3),
              defaultRenderer: new charts.ArcRendererConfig(
                  arcRendererDecorators: [
                    new charts.ArcLabelDecorator(
                        labelPosition: charts.ArcLabelPosition.outside)
                  ]),
              //  defaultRenderer:
              //      new charts.ArcRendererConfig(arcLength: 3 / 2 * pi))
            ),
          )
        ],
      ),
    );
  }
}
