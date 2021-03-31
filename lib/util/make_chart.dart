import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MakeChart {
  static LineChartData makeChart(List<double?> chartValues) {
    return LineChartData(
      lineTouchData: LineTouchData(
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: Colors.blueGrey.withOpacity(0.8),
        ),
        touchCallback: (LineTouchResponse touchResponse) {},
        handleBuiltInTouches: true,
      ),
      gridData: FlGridData(
        show: false,
      ),
      titlesData: FlTitlesData(
        leftTitles: SideTitles(showTitles: false),
        bottomTitles: SideTitles(
          showTitles: false,
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      minX: 0,
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
                ? FlSpot(key.toDouble(), 0)
                : FlSpot(key.toDouble(), value),
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
        gradientTo: Offset(0, 2),
        gradientFrom: Offset(0, 0),
        barWidth: 8,
        isStrokeCapRound: true,
        dotData: FlDotData(
          show: false,
        ),
        belowBarData: BarAreaData(
          show: false,
        ),
      ),
    ];
  }
}
