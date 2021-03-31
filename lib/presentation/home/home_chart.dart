import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class HomeChart extends StatelessWidget {
  final LineChartData data;

  const HomeChart({Key? key, required this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: LineChart(
        data,
        swapAnimationDuration: const Duration(milliseconds: 650),
        swapAnimationCurve: Curves.easeOutCirc,
      ),
    );
  }
}
