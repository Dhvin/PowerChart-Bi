import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:power_bi_chart/charts/pipeline_series.dart';
import 'package:power_bi_chart/theme/bi_theme.dart' as Theme;

class BiDailySales extends StatelessWidget {
  final List<PipelineSeries> data;

  BiDailySales({@required this.data});

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
          Expanded(
            child: charts.BarChart(series,
                animationDuration: Duration(seconds: 2),
                animate: true,
                domainAxis: new charts.OrdinalAxisSpec(
                    // Make sure that we draw the domain axis line.
                    showAxisLine: false,
                    // But don't draw anything else.
                    renderSpec: new charts.NoneRenderSpec()),
                primaryMeasureAxis: new charts.NumericAxisSpec(
                    renderSpec: charts.NoneRenderSpec())),
          ),
        ],
      ),
    );
  }
}
