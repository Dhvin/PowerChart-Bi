import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:power_bi_chart/charts/pipeline_series.dart';

class LineChartSeries extends StatelessWidget {
  final List<PipelineSeries> data;
  final List<PipelineSeries> pieData;

  LineChartSeries({@required this.data, this.pieData});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<PipelineSeries, num>> series = [
      charts.Series(
          id: "Subscribers",
          data: data,
          domainFn: (PipelineSeries series, _) => series.year,
          measureFn: (PipelineSeries series, _) => series.sales,
          colorFn: (series, _) => charts.MaterialPalette.red.shadeDefault),
      charts.Series(
          id: "Subscribers1",
          data: pieData,
          domainFn: (PipelineSeries series, _) => series.year,
          measureFn: (PipelineSeries series, _) => series.sales,
          colorFn: (series, _) => charts.MaterialPalette.blue.shadeDefault),
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
                "Won/Lost Trend",
              ),
              Padding(padding: EdgeInsets.only(left: 195.0)),
              IconButton(icon: new Icon(Icons.more_vert), onPressed: null),
            ],
          ),
          Row(children: [
            Text(
              "By Stage Name",
              style: TextStyle(fontFamily: 'Helveltica'),
            ),
          ]),
          Padding(padding: EdgeInsets.only(top: 10.0)),
          Row(children: [
            Text(
              "Stage",
              style: TextStyle(fontFamily: 'Helveltica'),
            ),
            Padding(padding: EdgeInsets.only(left: 10.0)),
            Text(
              "Lost",
              style: TextStyle(fontFamily: 'Helveltica'),
            ),
            Padding(padding: EdgeInsets.only(left: 10.0)),
            Text(
              "Won",
              style: TextStyle(fontFamily: 'Helveltica'),
            ),
          ]),
          Expanded(
            child: charts.NumericComboChart(
              series,
              animationDuration: Duration(seconds: 3),
              animate: true,
              defaultRenderer: new charts.LineRendererConfig(),
            ),
          )
        ],
      ),
    );
  }
}
