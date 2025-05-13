import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ControlChart01 extends StatelessWidget {
  ControlChart01({
    Key? key,
    this.upper,
    this.data,
    this.data2,
    this.data3,
    this.data4,
    this.under,
    this.datedata,
  }) : super(key: key);

  List<FlSpot>? upper;
  List<FlSpot>? data;
  List<FlSpot>? data2;
  List<FlSpot>? data3;
  List<FlSpot>? data4;
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
      angle: 0,
      // child: Text(
      //   value.toInt().toString(),
      //   style: style,
      // ),
      child: SizedBox(
        width: 20,
        child: Text(
          value.toString(),
          // datedatain[value.toInt().toString()] != null
          //     ? '${datedatain[value.toInt().toString()]}'
          //     : "",
          // data != null ? '${data![(value * 10).toInt() - 1].x}' : "",
          // "",
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

    for (var i = 0; i < _data.length; i++) {}

    TextEditingController controller = TextEditingController();
    ScrollController controllerReport = ScrollController();

    return AspectRatio(
      aspectRatio: 2,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Text("(Hmv.)"),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Text("(mm.)"),
            ),
          ),
          Padding(
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
                  // LineChartBarData(
                  //   spots: upper,
                  //   isCurved: true,
                  //   barWidth: 2,
                  //   color: Colors.transparent,
                  //   dotData: FlDotData(
                  //     show: false,
                  //   ),
                  // ),
                  LineChartBarData(
                    spots: data ?? [],
                    show: true,
                    isCurved: false,
                    barWidth: 2,
                    color: Colors.blue,
                    dotData: FlDotData(
                      show: true,
                    ),
                  ),
                  LineChartBarData(
                    spots: data2 ?? [],
                    show: true,
                    isCurved: false,
                    barWidth: 2,
                    color: Colors.black,
                    dotData: FlDotData(
                      show: false,
                    ),
                  ),
                  LineChartBarData(
                    spots: data3 ?? [],
                    show: true,
                    isCurved: false,
                    barWidth: 2,
                    color: Colors.red,
                    dotData: FlDotData(
                      show: false,
                    ),
                  ),
                  LineChartBarData(
                    spots: data4 ?? [],
                    show: true,
                    isCurved: false,
                    barWidth: 2,
                    color: Colors.black,
                    dotData: FlDotData(
                      show: false,
                    ),
                  ),
                  LineChartBarData(
                    spots: _under,
                    isCurved: false,
                    barWidth: 2,
                    color: Colors.black,
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
                    ? _under[0].y
                    //  - (_under[_under.length - 1].y) * 0.01
                    : 0,
                maxY: _upper.length > 0
                    ? _upper[_upper.length - 1].y
                    // +
                    //     (_upper[_upper.length - 1].y) * 0.01
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
                        interval: 0.1,
                        getTitlesWidget: (value, meta) {
                          // print(value);
                          // print(value);
                          // print(meta);
                          return bottomTitleWidgets(
                              double.parse(value.toStringAsFixed(2)),
                              meta,
                              _datedata);
                        }),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: leftTitleWidgets,
                      interval: 100,
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
        ],
      ),
    );
  }
}
