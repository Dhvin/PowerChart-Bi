import 'dart:async';
import 'dart:collection';
import 'dart:convert';

import 'package:charts_flutter/flutter.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:power_bi_chart/dynamic_parse.dart';

class BarChartWidgetParser extends WidgetParser {
  @override
  Map<String, dynamic> export(Widget widget, BuildContext buildContext) {
    var realWidget = widget as Checkbox;
    return <String, dynamic>{
      "type": widgetName,
      "value": realWidget.value,
      "activeColor": realWidget.activeColor,
      "checkColor": realWidget.checkColor,
      "focusColor": realWidget.focusColor
    };
  }

  @override
  Widget parse(Map<String, dynamic> map, Map<String, dynamic> dataMap,
      BuildContext buildContext, ClickListener listener) {
    // State dynamicState = data['dynamicstate'];
    dynamic Animation;
    List<charts.Series<Map, String>> series = [
      charts.Series(
        id: "Subscribers",
        data: map['data'],
        domainFn: (Map series, _) => series[map['domainFn']],
        measureFn: (Map series, _) => series[map['measureFn']],
        colorFn: (Map series, _) =>
            charts.Color.fromHex(code: series[map['colorFn']]),
      ),
    ];
    return Container(
        height: 300,
        width: 360,
        padding: EdgeInsets.only(left: 10.0),
        child: Column(children: <Widget>[
          Row(children: [
            Expanded(
                child: charts.BarChart(
              series,
              animate: true,
              animationDuration: Duration(seconds: 2),
            ))
          ])
        ]));
  }

  @override
  String get widgetName => "BarChart";

  @override
  Type get widgetType => BarChart;
}
