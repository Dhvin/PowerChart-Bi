import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:power_bi_chart/charts/pipeline_series.dart';

class BiStackedLine extends StatelessWidget {
  final List<PipelineSeries> data;
  final List<PipelineSeries> lineData1;
  final List<PipelineSeries> lineData2;

  BiStackedLine({@required this.data, this.lineData1, this.lineData2});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<PipelineSeries, num>> series = [
      charts.Series(
          id: "Subscribers",
          data: data,
          // areaColorFn: (series, __) => charts.MaterialPalette.white,
          domainFn: (PipelineSeries series, _) => series.year,
          measureFn: (PipelineSeries series, _) => series.sales,
          colorFn: (series, _) =>
              charts.MaterialPalette.red.shadeDefault.lighter),
      charts.Series(
          id: "Subscribers",
          data: lineData1,
          // areaColorFn: (series, __) => charts.MaterialPalette.white,
          domainFn: (PipelineSeries series, _) => series.year,
          measureFn: (PipelineSeries series, _) => series.sales,
          colorFn: (series, _) => charts.MaterialPalette.black),
      charts.Series(
          id: "Subscribers",
          data: lineData2,
          // areaColorFn: (series, __) => charts.MaterialPalette.white,
          domainFn: (PipelineSeries series, _) => series.year,
          measureFn: (PipelineSeries series, _) => series.sales,
          colorFn: (series, _) =>
              charts.MaterialPalette.green.shadeDefault.lighter),
    ];

    return Container(
      height: 300,
      width: 360,
      padding: EdgeInsets.only(left: 10.0),
      child: Column(
        children: <Widget>[
          Expanded(
            child: charts.LineChart(
              series,
              animate: true,
              animationDuration: Duration(seconds: 2),
              defaultRenderer: new charts.LineRendererConfig(
                  includeArea: true, stacked: true),
              domainAxis: new charts.NumericAxisSpec(
                  showAxisLine: false, renderSpec: new charts.NoneRenderSpec()),
              primaryMeasureAxis: new charts.NumericAxisSpec(
                  renderSpec: charts.NoneRenderSpec()),
            ),
          )
        ],
      ),
    );
  }
}
