import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MakeChart {
  static LineChartData makeChart(List<double?> chartValues) {
    return LineChartData(
      lineTouchData: LineTouchData(enabled: false),
      gridData: FlGridData(
        show: false,
      ),
      titlesData: FlTitlesData(
        leftTitles: SideTitles(
          getTitles: (index) {
            if (index % 3 == 0 && index != 0) {
              return '${index.toInt()}';
            }
            return '';
          },
          getTextStyles: (idx) =>
              const TextStyle(color: Colors.purple, fontSize: 16),
          showTitles: true,
        ),
        bottomTitles: SideTitles(
            getTitles: (index) {
              switch (index.toInt()) {
                case 0:
                  return '00h';
                case 2:
                  return '03h';
                case 4:
                  return '06h';
                case 6:
                  return '09h';
                case 8:
                  return '12h';
                case 10:
                  return '15h';
                case 12:
                  return '18h';
                case 14:
                  return '21h';
              }
              return '';
            },
            showTitles: true,
            getTextStyles: (idx) =>
                const TextStyle(color: Colors.purple, fontSize: 16)),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      minY: 0,
      lineBarsData: makeLineBar(chartValues),
    );
  }

  static List<LineChartBarData> makeLineBar(List<double?> chartValues) {
    final spots = chartValues
        .asMap()
        .map<FlSpot, int>(
          (key, value) => MapEntry(
            value == null
                ? FlSpot(key.toDouble() * 2, 0)
                : FlSpot(key.toDouble() * 2, value),
            key,
          ),
        )
        .keys
        .toList();
    return [
      LineChartBarData(
        spots: spots,
        isCurved: true,
        colors: [
          Colors.purple,
          Colors.blue,
        ],
        gradientTo: const Offset(0, 2),
        gradientFrom: const Offset(0, 0),
        barWidth: 6,
        isStrokeCapRound: true,
        dotData: FlDotData(
          show: true,
          getDotPainter: (_, __, ___, ____) =>
              FlDotCirclePainter(color: Colors.cyan.shade200, strokeWidth: 0),
        ),
        belowBarData: BarAreaData(
          show: false,
        ),
      ),
    ];
  }
}
