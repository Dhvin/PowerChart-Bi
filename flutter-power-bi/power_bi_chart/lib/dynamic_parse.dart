library dynamic_widget;

import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:logging/logging.dart';

class DynamicWidgetBuilder {
  static final Logger log = Logger('DynamicWidget');

  static final _parsers = [];

  static final _widgetNameParserMap = <String, WidgetParser>{};

  static bool _defaultParserInited = false;

  // use this method for adding your custom widget parser
  static void addParser(WidgetParser parser) {
    log.info(
        "add custom widget parser, make sure you don't overwirte the widget type.");
    _parsers.add(parser);
    _widgetNameParserMap[parser.widgetName] = parser;
  }

  static void initDefaultParsersIfNess() {
    if (!_defaultParserInited) {
      for (var parser in _parsers) {
        _widgetNameParserMap[parser.widgetName] = parser;
      }
      _defaultParserInited = true;
    }
  }

  static Widget build(
      String json, BuildContext buildContext, ClickListener listener) {
    initDefaultParsersIfNess();
    var map = jsonDecode(json);
    var schemaMap = map["schema"];
    var dataMap = map["data"];
    var widget;
    ClickListener _listener =
        listener == null ? new NonResponseWidgetClickListener() : listener;
    widget = buildFromMap(map, dataMap, buildContext, _listener);
    return widget;
  }

  static Widget buildEx(
      String json,
      BuildContext buildContext,
      ClickListener listener,
      Map<String, dynamic> formData,
      State stateWidget) {
    initDefaultParsersIfNess();
    var map = jsonDecode(json);
    formData['dynamicstate'] = stateWidget;
    var schemaMap = map["schema"];
    var widget;
    ClickListener _listener =
        listener == null ? new NonResponseWidgetClickListener() : listener;
    widget = buildFromMap(map, formData, buildContext, _listener);
    return widget;
  }

  static Widget buildFromMap(
      Map<String, dynamic> map,
      Map<String, dynamic> dataMap,
      BuildContext buildContext,
      ClickListener listener) {
    initDefaultParsersIfNess();
    print(dataMap);
    if (map == null) {
      return null;
    }
    String widgetName = map['type'];
    if (widgetName == null) {
      return null;
    }
    var parser = _widgetNameParserMap[widgetName];
    if (parser != null) {
      return parser.parse(map, dataMap, buildContext, listener);
    }
    log.warning("Not support parser type: $widgetName");
    return null;
  }

  static List<Widget> buildWidgets(
      List<dynamic> values,
      Map<String, dynamic> dataMap,
      BuildContext buildContext,
      ClickListener listener) {
    initDefaultParsersIfNess();
    List<Widget> rt = [];
    for (var value in values) {
      rt.add(buildFromMap(value, dataMap, buildContext, listener));
    }
    return rt;
  }

  static Map<String, dynamic> export(Widget widget, BuildContext buildContext) {
    initDefaultParsersIfNess();
    var parser = _findMatchedWidgetParserForExport(widget);
    if (parser != null) {
      return parser.export(widget, buildContext);
    }
    log.warning(
        "Can't find WidgetParser for Type ${widget.runtimeType} to export.");
    return null;
  }

  static List<Map<String, dynamic>> exportWidgets(
      List<Widget> widgets, BuildContext buildContext) {
    initDefaultParsersIfNess();
    List<Map<String, dynamic>> rt = [];
    for (var widget in widgets) {
      rt.add(export(widget, buildContext));
    }
    return rt;
  }

  static WidgetParser _findMatchedWidgetParserForExport(Widget widget) {
    for (var parser in _parsers) {
      if (parser.matchWidgetForExport(widget)) {
        return parser;
      }
    }
    return null;
  }
}

/// extends this class to make a Flutter widget parser.
abstract class WidgetParser {
  /// parse the json map into a flutter widget.
  Widget parse(Map<String, dynamic> map, Map<String, dynamic> dataMap,
      BuildContext buildContext, ClickListener listener);

  /// the widget type name for example:
  /// {"type" : "Text", "data" : "Denny"}
  /// if you want to make a flutter Text widget, you should implement this
  /// method return "Text", for more details, please see
  /// @TextWidgetParser
  String get widgetName;

  /// export the runtime widget to json
  Map<String, dynamic> export(Widget widget, BuildContext buildContext);

  /// match current widget
  Type get widgetType;

  bool matchWidgetForExport(Widget widget) => widget.runtimeType == widgetType;
}

abstract class ClickListener {
  void onClicked(String event);
}

class NonResponseWidgetClickListener implements ClickListener {
  static final Logger log = Logger('NonResponseWidgetClickListener');

  @override
  void onClicked(String event) {
    log.info("receiver click event: " + event);
    print("receiver click event: " + event);
  }
}
