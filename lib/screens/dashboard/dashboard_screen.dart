import 'package:draw_graph/draw_graph.dart';
import 'package:draw_graph/models/feature.dart';
import 'package:flutter/material.dart';
import 'package:momo_web/constants.dart';
import 'package:momo_web/models/WeeklyTemperature.dart';
import 'package:momo_web/responsive.dart';
import 'package:momo_web/screens/dashboard/components/header.dart';
import 'package:momo_web/screens/dashboard/components/todays_weather.dart';
import 'package:momo_web/screens/dashboard/components/recent_file.dart';
import 'package:momo_web/screens/dashboard/components/time.dart';
import 'package:momo_web/screens/dashboard/components/todays_task.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      TodaysWeather(),
                      SizedBox(height: defaultPadding),
                      TemperatureGraph(),
                      SizedBox(height: defaultPadding),
                      TodaysTask(),
                      SizedBox(height: defaultPadding),
                      RecentFiles(),
                      if (Responsive.isMobile(context))
                        SizedBox(height: defaultPadding),
                      if (Responsive.isMobile(context)) Time(),
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context))
                  SizedBox(width: defaultPadding),
                if (!Responsive.isMobile(context))
                  Expanded(
                    flex: 2,
                    child: Time(),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TemperatureGraph extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //         body: Center(
    //             child: Container(
    //                 child: SfCartesianChart(
    //                     primaryXAxis: DateTimeAxis(),
    //                     series: <ChartSeries>[
    //                         AreaSeries<SalesData, DateTime>(
    //                             dataSource: chartData,
    //                             color: Colors.deepOrange[300],
    //                             borderMode: AreaBorderMode.excludeBottom,
    //                             borderColor: Colors.green,
    //                             borderWidth: 2,
    //                             xValueMapper: (SalesData sales, _) => sales.year,
    //                             yValueMapper: (SalesData sales, _) => sales.sales
    //                         )
    //                     ]
    //                 )
    //             )
    //         )
    //     );
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: LineGraph(
        features: features,
        size: Size(800, 400),
        labelX: [
          'Day 1',
          'Day 2',
          'Day 3',
          'Day 4',
          'Day 5',
          'Day 6',
          'Day 7',
        ],
        labelY: ['-10°', '0°', '10°', '20°', '30°', '40°'],
        showDescription: false,
        graphColor: Colors.white30,
        graphOpacity: 0.2,
        verticalFeatureDirection: false,
      ),
    );
  }
}
