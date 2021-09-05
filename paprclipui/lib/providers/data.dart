import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class RowData {
  String k1;
  String v1;
  String k2;
  String v2;
  String k3;
  String v3;
  RowData(
      {@required this.k1,
      @required this.k2,
      @required this.k3,
      @required this.v1,
      @required this.v2,
      @required this.v3});

  factory RowData.fromJson(dynamic json) {
    return RowData(
        k1: json.keys.toList()[0],
        k2: json.keys.toList()[1],
        k3: json.keys.toList()[2],
        v1: json[json.keys.toList()[0]],
        v2: json[json.keys.toList()[1]],
        v3: json[json.keys.toList()[2]]);
  }
}

class TableData extends ChangeNotifier {
  List<RowData> d;

  TableData(this.d);

  factory TableData.fromJson(dynamic json) {
    return TableData([
      ...json.map((mapval) {
        return RowData.fromJson(mapval);
      }).toList()
    ]);
  }
}

class MovingAverage extends ChangeNotifier {
  String buy;
  String sell;
  String text;
  TableData exponential;
  TableData simple;

  MovingAverage({
    @required this.buy,
    @required this.sell,
    @required this.exponential,
    @required this.simple,
    @required this.text,
  });

  factory MovingAverage.fromJson(dynamic json) {
    return MovingAverage(
      buy: json["buy"],
      exponential: TableData.fromJson(json["table_data"]["exponential"]),
      sell: json["sell"],
      text: json["text"],
      simple: TableData.fromJson(json["table_data"]["simple"]),
    );
  }
}

class TechnicalIndicator extends ChangeNotifier {
  String buy;
  String neutral;
  String sell;
  String text;
  TableData td;

  TechnicalIndicator({
    @required this.buy,
    @required this.neutral,
    @required this.sell,
    @required this.td,
    @required this.text,
  });

  factory TechnicalIndicator.fromJson(dynamic json) {
    return TechnicalIndicator(
        buy: json["buy"],
        neutral: json["neutral"],
        sell: json["sell"],
        td: TableData.fromJson(json["table_data"]),
        text: json["text"]);
  }
}

class PivotPointsData {
  String pivot;
  String s1;
  String s2;
  String s3;
  String r1;
  String r2;
  String r3;

  PivotPointsData(
      {@required this.pivot,
      @required this.r1,
      @required this.r2,
      @required this.r3,
      @required this.s1,
      @required this.s2,
      @required this.s3});
  factory PivotPointsData.fromJson(dynamic json) {
    return PivotPointsData(
        pivot: json["pivot_points"],
        r1: json["r1"],
        r2: json["r2"],
        r3: json["r3"],
        s1: json["s1"],
        s2: json["s2"],
        s3: json["s3"]);
  }
}

class PivotPoints extends ChangeNotifier {
  PivotPointsData camarilla;
  PivotPointsData classic;
  PivotPointsData demark;
  PivotPointsData fibonacci;
  PivotPointsData woodie;

  PivotPoints(
      {@required this.camarilla,
      @required this.classic,
      @required this.demark,
      @required this.fibonacci,
      @required this.woodie});

  factory PivotPoints.fromJson(dynamic json) {
    return PivotPoints(
        camarilla: PivotPointsData.fromJson(json["camarilla"]),
        classic: PivotPointsData.fromJson(json["classic"]),
        demark: PivotPointsData.fromJson(json["demark"]),
        fibonacci: PivotPointsData.fromJson(json["fibonacci"]),
        woodie: PivotPointsData.fromJson(json["woodie"]));
  }
}

class DataSet extends ChangeNotifier {
  MovingAverage movAvgInfo;
  TechnicalIndicator oscInfo;
  PivotPoints pivotInfo;

  Future<String> setData(String time) async {
    const url =
        'https://api.bottomstreet.com/forex/technical?forex_name=USDINR';
    final response = await http.get(url);

    final responsedata = json.decode(response.body);
    print(time);
    final movingAvgData = responsedata[time]["moving_averages"];
    final technicalData = responsedata[time]["technical_indicator"];
    final pivotData = responsedata[time]["pivot_points"];
    print("Moving Avg Data: $movingAvgData");
    print("Technical Indicator Data: $technicalData");

    movAvgInfo = MovingAverage.fromJson(movingAvgData);
    oscInfo = TechnicalIndicator.fromJson(technicalData);
    pivotInfo = PivotPoints.fromJson(pivotData);

    notifyListeners();
    print("Successful");
    return Future.value("Successful");
  }
}
