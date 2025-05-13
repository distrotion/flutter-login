import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ControlChartSoi8 extends StatelessWidget {
  ControlChartSoi8({
    Key? key,
    this.upper,
    this.data,
    this.under,
    this.datedata,
  }) : super(key: key);

  List<FlSpot>? upper;
  List<FlSpot>? data;
  List<FlSpot>? under;
  Map<String, String>? datedata;

  Widget bottomTitleWidgets(
      double value, TitleMeta meta, Map<String, String> datedatain) {
    const style = TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.bold,
    );

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 4,
      angle: 1.57,
      // child: Text(
      //   value.toInt().toString(),
      //   style: style,
      // ),
      child: SizedBox(
        width: 200,
        child: Text(
          // value.toInt().toString(),
          datedatain[value.toInt().toString()] != null
              ? '${datedatain[value.toInt().toString()]}'
              : "Reject",
          style: style,
          textAlign: TextAlign.end,
        ),
      ),
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(fontSize: 10);

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(
        '${value}',
        style: style,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<FlSpot> _upper = upper ?? [];
    List<FlSpot> _data = data ?? [];
    List<FlSpot> _under = under ?? [];
    Map<String, String> _datedata = datedata ?? {};

    return AspectRatio(
      aspectRatio: 2,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 18,
          top: 10,
          bottom: 4,
        ),
        child: LineChart(
          LineChartData(
            lineTouchData: LineTouchData(enabled: false),
            lineBarsData: [
              LineChartBarData(
                spots: upper ?? [],
                isCurved: true,
                barWidth: 2,
                color: Colors.red,
                dotData: FlDotData(
                  show: false,
                ),
              ),
              LineChartBarData(
                spots: data ?? [],
                show: true,
                isCurved: false,
                barWidth: 2,
                color: Colors.green,
                dotData: FlDotData(
                  show: true,
                ),
              ),
              LineChartBarData(
                spots: _under,
                isCurved: false,
                barWidth: 2,
                color: Colors.yellow,
                dotData: FlDotData(
                  show: false,
                ),
              ),
            ],
            betweenBarsData: [
              BetweenBarsData(
                fromIndex: 0,
                toIndex: 1,
                color: Colors.transparent,
              )
            ],
            minY: _under.length > 0
                ? _under[0].y - (_under[_under.length - 1].y) * 0.01
                : 0,
            maxY: _upper.length > 0
                ? _upper[_upper.length - 1].y +
                    (_upper[_upper.length - 1].y) * 0.01
                : 0,
            minX: _under.length > 0 ? _under[0].x : 0,
            maxX: _upper.length > 0 ? _upper[_upper.length - 1].x : 0,
            borderData: FlBorderData(
              show: false,
            ),
            titlesData: FlTitlesData(
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  interval: 1,
                  getTitlesWidget: (value, meta) =>
                      bottomTitleWidgets(value, meta, _datedata),
                ),
              ),
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  getTitlesWidget: leftTitleWidgets,
                  interval: 1,
                  reservedSize: 36,
                ),
              ),
              topTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              rightTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
            ),
            // gridData: FlGridData(
            //   show: true,
            //   drawVerticalLine: false,
            //   horizontalInterval: 1,
            //   checkToShowHorizontalLine: (double value) {
            //     return value == 1 || value == 6 || value == 4 || value == 5;
            //   },
            // ),
          ),
        ),
      ),
    );
  }
}
