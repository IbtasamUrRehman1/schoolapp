import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';


class Pie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map<String, double> dataMap = new Map();
    dataMap.putIfAbsent("Present", () => 6);
    dataMap.putIfAbsent("Absent", () => 3);
    dataMap.putIfAbsent("Leave", () => 2);
    return PieChart(
      dataMap: dataMap,
      animationDuration: Duration(milliseconds: 800),
      chartLegendSpacing: 32.0,
      chartRadius: MediaQuery.of(context).size.width / 2.7,
      showChartValuesInPercentage: true,
      showChartValues: true,
      showChartValuesOutside: false,
      showLegends: true,
      decimalPlaces: 1,
      showChartValueLabel: true,
      initialAngle: 0,
    );
  }
}
