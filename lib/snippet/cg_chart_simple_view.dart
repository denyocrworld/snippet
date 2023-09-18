import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

//#GROUP_TEMPLATE chart
List<Widget> _widgets = [
  const SnippetContainer("chart_simple_line"),
  //#TEMPLATE chart_simple_line
  Builder(
    builder: (context) {
      final List<Map> chartData = [
        {
          "year": 2018,
          "sales": 40,
        },
        {
          "year": 2019,
          "sales": 90,
        },
        {
          "year": 2020,
          "sales": 30,
        },
        {
          "year": 2021,
          "sales": 80,
        },
        {
          "year": 2022,
          "sales": 90,
        }
      ];

      return Container(
        color: Theme.of(context).cardColor,
        padding: const EdgeInsets.all(12.0),
        child: SfCartesianChart(
          primaryXAxis: NumericAxis(
            isVisible: false,
          ),
          primaryYAxis: NumericAxis(
            isVisible: false,
          ),
          plotAreaBorderColor: Colors.transparent,
          margin: EdgeInsets.all(0.0),
          series: <ChartSeries>[
            // Renders line chart
            LineSeries<Map, int>(
              color: Colors.blue,
              dataSource: chartData,
              xValueMapper: (Map data, _) => data["year"],
              yValueMapper: (Map data, _) => data["sales"],
            )
          ],
        ),
      );
    },
  ),
  //#END
  const SnippetContainer("chart_simple_spline"),
  //#TEMPLATE chart_simple_spline
  Builder(
    builder: (context) {
      final List<Map> chartData = [
        {
          "year": 2018,
          "sales": 40,
        },
        {
          "year": 2019,
          "sales": 90,
        },
        {
          "year": 2020,
          "sales": 30,
        },
        {
          "year": 2021,
          "sales": 80,
        },
        {
          "year": 2022,
          "sales": 90,
        }
      ];

      return Container(
        color: Theme.of(context).cardColor,
        padding: const EdgeInsets.all(12.0),
        child: SfCartesianChart(
          primaryXAxis: NumericAxis(
            isVisible: false,
          ),
          primaryYAxis: NumericAxis(
            isVisible: false,
          ),
          plotAreaBorderColor: Colors.transparent,
          margin: EdgeInsets.all(0.0),
          series: <ChartSeries>[
            SplineSeries<Map, int>(
              color: Colors.blue,
              dataSource: chartData,
              xValueMapper: (Map data, _) => data["year"],
              yValueMapper: (Map data, _) => data["sales"],
            )
          ],
        ),
      );
    },
  ),
  //#END
  const SnippetContainer("chart_simple_bar_horizontal"),
  //#TEMPLATE chart_simple_bar_horizontal
  Builder(
    builder: (context) {
      final List<Map> chartData = [
        {
          "year": 2018,
          "sales": 40,
        },
        {
          "year": 2019,
          "sales": 90,
        },
        {
          "year": 2020,
          "sales": 30,
        },
        {
          "year": 2021,
          "sales": 80,
        },
        {
          "year": 2022,
          "sales": 90,
        }
      ];

      return Container(
        color: Theme.of(context).cardColor,
        padding: const EdgeInsets.all(12.0),
        child: SfCartesianChart(
          primaryXAxis: NumericAxis(
            isVisible: false,
          ),
          primaryYAxis: NumericAxis(
            isVisible: false,
          ),
          plotAreaBorderColor: Colors.transparent,
          margin: EdgeInsets.all(0.0),
          series: <ChartSeries>[
            BarSeries<Map, int>(
              color: Colors.blue,
              dataSource: chartData,
              xValueMapper: (Map data, _) => data["year"],
              yValueMapper: (Map data, _) => data["sales"],
            )
          ],
        ),
      );
    },
  ),
  //#END
  const SnippetContainer("chart_simple_bar_vertical"),
  //#TEMPLATE chart_simple_bar_vertical
  Builder(
    builder: (context) {
      final List<Map> chartData = [
        {
          "year": 2018,
          "sales": 40,
        },
        {
          "year": 2019,
          "sales": 90,
        },
        {
          "year": 2020,
          "sales": 30,
        },
        {
          "year": 2021,
          "sales": 80,
        },
        {
          "year": 2022,
          "sales": 90,
        }
      ];

      return Container(
        color: Theme.of(context).cardColor,
        padding: const EdgeInsets.all(12.0),
        child: SfCartesianChart(
          primaryXAxis: NumericAxis(
            isVisible: false,
          ),
          primaryYAxis: NumericAxis(
            isVisible: false,
          ),
          plotAreaBorderColor: Colors.transparent,
          margin: EdgeInsets.all(0.0),
          isTransposed: true,
          series: <ChartSeries>[
            BarSeries<Map, int>(
              color: Colors.blue,
              dataSource: chartData,
              xValueMapper: (Map data, _) => data["year"],
              yValueMapper: (Map data, _) => data["sales"],
            )
          ],
        ),
      );
    },
  ),
  //#END
  const SnippetContainer("chart_simple_scatter"),
  //#TEMPLATE chart_simple_scatter
  Builder(
    builder: (context) {
      final List<Map> chartData = [
        {
          "year": 2018,
          "sales": 40,
        },
        {
          "year": 2019,
          "sales": 90,
        },
        {
          "year": 2020,
          "sales": 30,
        },
        {
          "year": 2021,
          "sales": 80,
        },
        {
          "year": 2022,
          "sales": 90,
        }
      ];

      return Container(
        color: Theme.of(context).cardColor,
        padding: const EdgeInsets.all(12.0),
        child: SfCartesianChart(
          primaryXAxis: NumericAxis(
            isVisible: false,
          ),
          primaryYAxis: NumericAxis(
            isVisible: false,
          ),
          plotAreaBorderColor: Colors.transparent,
          margin: EdgeInsets.all(0.0),
          series: <ChartSeries>[
            ScatterSeries<Map, int>(
              color: Colors.blue,
              dataSource: chartData,
              xValueMapper: (Map data, _) => data["year"],
              yValueMapper: (Map data, _) => data["sales"],
            )
          ],
        ),
      );
    },
  ),
  //#END
  const SnippetContainer("chart_simple_area"),
  //#TEMPLATE chart_simple_area
  Builder(
    builder: (context) {
      final List<Map> chartData = [
        {
          "year": 2018,
          "sales": 40,
        },
        {
          "year": 2019,
          "sales": 90,
        },
        {
          "year": 2020,
          "sales": 30,
        },
        {
          "year": 2021,
          "sales": 80,
        },
        {
          "year": 2022,
          "sales": 90,
        }
      ];

      return Container(
        color: Theme.of(context).cardColor,
        padding: const EdgeInsets.all(12.0),
        child: SfCartesianChart(
          primaryXAxis: NumericAxis(
            isVisible: false,
          ),
          primaryYAxis: NumericAxis(
            isVisible: false,
          ),
          plotAreaBorderColor: Colors.transparent,
          margin: EdgeInsets.all(0.0),
          series: <ChartSeries>[
            AreaSeries<Map, int>(
              color: Colors.blue,
              dataSource: chartData,
              xValueMapper: (Map data, _) => data["year"],
              yValueMapper: (Map data, _) => data["sales"],
            )
          ],
        ),
      );
    },
  ),
  //#END
  const SnippetContainer("chart_simple_bubble"),
  //#TEMPLATE chart_simple_bubble
  Builder(
    builder: (context) {
      final List<Map> chartData = [
        {
          "year": 2018,
          "sales": 40,
        },
        {
          "year": 2019,
          "sales": 90,
        },
        {
          "year": 2020,
          "sales": 30,
        },
        {
          "year": 2021,
          "sales": 80,
        },
        {
          "year": 2022,
          "sales": 90,
        }
      ];

      return Container(
        color: Theme.of(context).cardColor,
        padding: const EdgeInsets.all(12.0),
        child: SfCartesianChart(
          primaryXAxis: NumericAxis(
            isVisible: false,
          ),
          primaryYAxis: NumericAxis(
            isVisible: false,
          ),
          plotAreaBorderColor: Colors.transparent,
          margin: EdgeInsets.all(0.0),
          series: <ChartSeries>[
            BubbleSeries<Map, int>(
              color: Colors.blue,
              dataSource: chartData,
              xValueMapper: (Map data, _) => data["year"],
              yValueMapper: (Map data, _) => data["sales"],
            )
          ],
        ),
      );
    },
  ),
  //#END
  const SnippetContainer("chart_simple_step_line"),
  //#TEMPLATE chart_simple_step_line
  Builder(
    builder: (context) {
      final List<Map> chartData = [
        {
          "year": 2018,
          "sales": 40,
        },
        {
          "year": 2019,
          "sales": 90,
        },
        {
          "year": 2020,
          "sales": 30,
        },
        {
          "year": 2021,
          "sales": 80,
        },
        {
          "year": 2022,
          "sales": 90,
        }
      ];

      return Container(
        color: Theme.of(context).cardColor,
        padding: const EdgeInsets.all(12.0),
        child: SfCartesianChart(
          primaryXAxis: NumericAxis(
            isVisible: false,
          ),
          primaryYAxis: NumericAxis(
            isVisible: false,
          ),
          plotAreaBorderColor: Colors.transparent,
          margin: EdgeInsets.all(0.0),
          series: <ChartSeries>[
            StepLineSeries<Map, int>(
              color: Colors.blue,
              dataSource: chartData,
              xValueMapper: (Map data, _) => data["year"],
              yValueMapper: (Map data, _) => data["sales"],
            )
          ],
        ),
      );
    },
  ),
  //#END
  const SnippetContainer("chart_simple_pie"),
  //#TEMPLATE chart_simple_pie
  Builder(
    builder: (context) {
      final List<Map> chartData = [
        {
          "year": "Jan",
          "sales": 40,
        },
        {
          "year": "Feb",
          "sales": 90,
        },
        {
          "year": "Mar",
          "sales": 30,
        },
        {
          "year": "Apr",
          "sales": 80,
        },
        {
          "year": "May",
          "sales": 90,
        }
      ];

      return Container(
        color: Theme.of(context).cardColor,
        padding: const EdgeInsets.all(12.0),
        child: SfCircularChart(
          legend: Legend(isVisible: true),
          series: <CircularSeries>[
            PieSeries<Map, String>(
              dataSource: chartData,
              dataLabelSettings: const DataLabelSettings(
                isVisible: true,
              ),
              xValueMapper: (Map data, _) => data["year"],
              yValueMapper: (Map data, _) => data["sales"],
            )
          ],
        ),
      );
    },
  ),
  //#END
];
