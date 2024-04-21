// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hammad_ui_screen/widgets/time_data.dart';
import 'package:fl_chart/fl_chart.dart';

class LineChartWidget extends StatelessWidget {
  final List<timeData> times;
  const LineChartWidget(
    this.times, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: LineChart(
        LineChartData(
          minX: 0,
          maxX: 11,
          titlesData: FlTitlesData(
            show: true,
            topTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: false,
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: false,
              ),
            ),
            rightTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: false,
              ),
            ),
          ),
          lineBarsData: [
            LineChartBarData(
              spots: times.map((time) => FlSpot(time.x, time.y)).toList(),
              dotData: FlDotData(show: true),
              isCurved: true,
              curveSmoothness: 0.40,
              shadow: Shadow(
                color: Colors.grey[800]!.withOpacity(0.3),
              ),
              color: Colors.grey[800],
            ),
          ],
          gridData: FlGridData(show: false),
          borderData: FlBorderData(
            show: true,
            border: Border(
              bottom: BorderSide(
                color: Colors.grey[800]!, // Adjust color as needed
                width: 2, // Adjust width as needed
              ),
            ),
          ),
        ),
      ),
    );
  }
}
