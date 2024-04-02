import 'package:exptracker/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';
import 'package:pie_chart/pie_chart.dart';


Map<String, String> legend = {
  
  "income": '5',
  "expance": '5',
};

List<Color> pieColor = [Colors.grey, Colors.white];


class HomePie extends StatelessWidget {
  final double tExp;
  final double tInc;
  final double total;

  const HomePie({
    Key? key,
    required this.tExp,
    required this.tInc,
    required this.total,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dataMap = {
      "expense": tExp,
      "income":tInc ,
    };

    return PieChart(
      dataMap: dataMap,
      animationDuration: const Duration(milliseconds: 800),
      chartLegendSpacing: 5,
      chartRadius: MediaQuery.of(context).size.width / 8,
      colorList: pieColor,
      initialAngleInDegree: 90,
      chartType: ChartType.disc,
      ringStrokeWidth: 10,
      totalValue: total, // Use provided total for consistency

      legendOptions: LegendOptions(
        legendLabels: legend, // Assuming 'legend' is a defined list
        showLegendsInRow: false,
        legendPosition: LegendPosition.bottom,
        showLegends: true, // Adjust as needed
        legendShape: BoxShape.circle,
        legendTextStyle: const TextStyle(fontWeight: FontWeight.bold),
      ),
      chartValuesOptions: ChartValuesOptions(
        showChartValueBackground: true,
        showChartValues: false, // Adjust as needed
        showChartValuesInPercentage: true,
        showChartValuesOutside: true,
        decimalPlaces: 0,
      ),
    );
  }
}
