import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:power_bi_chart/charts/pipeline_series.dart';

class BarLineStackChart extends StatelessWidget {
  final List<PipelineSeries> data, barData1, barData2;

  BarLineStackChart({@required this.data, this.barData1, this.barData2});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<PipelineSeries, String>> series = [
      charts.Series(
          id: "Subscribers",
          data: data,
          domainFn: (PipelineSeries series, _) => series.name,
          measureFn: (PipelineSeries series, _) => series.subscribers,
          colorFn: (PipelineSeries series, _) => series.barColor),
      charts.Series(
          id: "Subscribers",
          data: barData1,
          domainFn: (PipelineSeries series, _) => series.name,
          measureFn: (PipelineSeries series, _) => series.subscribers,
          colorFn: (PipelineSeries series, _) => series.barColor),
      charts.Series(
          id: "Subscribers",
          data: barData2,
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
                "Pipeline",
              ),
              Padding(padding: EdgeInsets.only(left: 245.0)),
              IconButton(icon: new Icon(Icons.more_vert), onPressed: null),
            ],
          ),
          Row(children: [
            Text(
              "BY WEEK & PRODUCT",
              style: TextStyle(fontFamily: 'Helveltica'),
            ),
          ]),
          Padding(padding: EdgeInsets.only(top: 10.0)),
          Row(verticalDirection: VerticalDirection.down, children: [
            Wrap(children: [
              Text(
                "Product Line",
                style: TextStyle(fontFamily: 'Roboto'),
              ),
              Padding(padding: EdgeInsets.only(left: 15.0)),
              Text(
                "Advanced ",
                style: TextStyle(fontFamily: 'Roboto'),
              ),
              Padding(padding: EdgeInsets.only(left: 5.0)),
              Text(
                "Bio-Diesel",
                style: TextStyle(fontFamily: 'Roboto'),
              ),
              Padding(padding: EdgeInsets.only(left: 5.0)),
              Text(
                "Mettallurgy Kit",
                style: TextStyle(fontFamily: 'Roboto'),
              ),
            ])
          ]),
          Expanded(
            child: charts.BarChart(
              series,
              animate: true,
              barGroupingType: charts.BarGroupingType.stacked,
            ),
          )
        ],
      ),
    );
  }
}
