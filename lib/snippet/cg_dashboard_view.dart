import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:latlong2/latlong.dart';

class CgDashboardView extends StatefulWidget {
  CgDashboardView({Key? key}) : super(key: key);

  Widget build(context, CgDashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("CgDashboard"),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: Container(
            constraints: BoxConstraints(
              maxWidth: 980.0,
            ),
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    CgDashboardStatistic(
                      color: Color(0xff321fdb),
                      value: "26k",
                      label: "Users",
                      points: CgDashboardService().getChartPoints(),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    CgDashboardStatistic(
                      color: Color(0xff3399ff),
                      value: "31k",
                      label: "Income",
                      points: CgDashboardService().getChartPoints(),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    CgDashboardStatistic(
                      color: Color(0xfff9b115),
                      value: "3k",
                      label: "Convertion rate",
                      points: CgDashboardService().getChartPoints(),
                      type: "area",
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    CgDashboardStatistic(
                      color: Color(0xffe55353),
                      value: "41k",
                      label: "Sessions",
                      points: CgDashboardService().getChartPoints(),
                      type: "bar",
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 1.0,
                      color: Colors.grey[400]!,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Traffic",
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6.0,
                                  ),
                                  Text(
                                    "January - July 2023",
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SegmentedButton(
                              showSelectedIcon: false,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                padding: EdgeInsets.all(0.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              segments: <ButtonSegment>[
                                ButtonSegment(
                                  value: "Day",
                                  label: Text(
                                    'Day',
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ),
                                ButtonSegment(
                                  value: "Month",
                                  label: Text(
                                    'Month',
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ),
                                ButtonSegment(
                                  value: "Year",
                                  label: Text(
                                    'Year',
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ),
                              ],
                              selected: {"Month"},
                              onSelectionChanged: (Set newSelection) {},
                            ),
                            SizedBox(
                              width: 12.0,
                            ),
                            Container(
                              width: 28.0,
                              height: 28.0,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.all(0.0),
                                  backgroundColor: primaryColor,
                                ),
                                onPressed: () {},
                                child: Icon(
                                  Icons.cloud_download_outlined,
                                  size: 16.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 260,
                        child: Builder(
                          builder: (context) {
                            final List<Map> productASales = [
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
                            final List<Map> productBSales = [
                              {
                                "year": 2018,
                                "sales": 60,
                              },
                              {
                                "year": 2019,
                                "sales": 100,
                              },
                              {
                                "year": 2020,
                                "sales": 59,
                              },
                              {
                                "year": 2021,
                                "sales": 20,
                              },
                              {
                                "year": 2022,
                                "sales": 70,
                              }
                            ];
                            return Container(
                              color: Theme.of(context).cardColor,
                              padding: EdgeInsets.all(12.0),
                              child: SfCartesianChart(
                                primaryXAxis: NumericAxis(
                                  decimalPlaces: 0,
                                  interval: 1,
                                ),
                                series: <CartesianSeries>[
                                  SplineSeries<Map, int>(
                                    color: Color(0xff34b961),
                                    dataSource: productASales,
                                    xValueMapper: (Map data, _) => data["year"],
                                    yValueMapper: (Map data, _) =>
                                        data["sales"],
                                  ),
                                  SplineAreaSeries<Map, int>(
                                    color: Color(0xff3399ff).withOpacity(0.3),
                                    borderColor: Color(0xff3399ff),
                                    borderWidth: 2.0,
                                    dataSource: productBSales,
                                    xValueMapper: (Map data, _) => data["year"],
                                    yValueMapper: (Map data, _) =>
                                        data["sales"],
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            CgDashboarProgressbar(
                              title: "Visits",
                              subtitle: "29.703 Users (40%)",
                              color: successColor,
                              value: 0.4,
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            CgDashboarProgressbar(
                              title: "Visits",
                              subtitle: "29.703 Users (40%)",
                              color: infoColor,
                              value: 0.4,
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            CgDashboarProgressbar(
                              title: "Visits",
                              subtitle: "29.703 Users (40%)",
                              color: warningColor,
                              value: 0.4,
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            CgDashboarProgressbar(
                              title: "Visits",
                              subtitle: "29.703 Users (40%)",
                              color: dangerColor,
                              value: 0.4,
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            CgDashboarProgressbar(
                              title: "Visits",
                              subtitle: "29.703 Users (40%)",
                              color: primaryColor,
                              value: 0.4,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    CgDashboardStatusCounter(
                      color: Color(0xff3b5998),
                      icon: MdiIcons.facebook,
                      title1: '90K',
                      subtitle1: 'FRIENDS',
                      title2: '459k',
                      subtitle2: 'FEEDS',
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    CgDashboardStatusCounter(
                      color: Color(0xff00aced),
                      icon: MdiIcons.twitter,
                      title1: '200K',
                      subtitle1: 'FOLLOWERS',
                      title2: '89k',
                      subtitle2: 'TWEETS',
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    CgDashboardStatusCounter(
                      color: Color(0xff4875b4),
                      icon: MdiIcons.linkedin,
                      title1: '5000+',
                      subtitle1: 'CONNECTIONS',
                      title2: '144k',
                      subtitle2: 'POSTS',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          QCard(
                            title: "Traffic & Sales",
                            subtitle: "November sales",
                            actions: [
                              // const Badge(
                              //   label: Text(
                              //     "4",
                              //     style: TextStyle(
                              //       color: Colors.white,
                              //     ),
                              //   ),
                              //   child: Icon(Icons.notifications),
                              // ),
                              const Icon(
                                Icons.developer_board,
                                size: 24.0,
                              ),
                            ],
                            children: [
                              QTextField(
                                label: "Email",
                                validator: Validator.required,
                                value: "user@demo.com",
                                onChanged: (value) {},
                              ),
                              QTextField(
                                label: "Password",
                                obscure: true,
                                validator: Validator.required,
                                suffixIcon: Icons.password,
                                value: "123456",
                                onChanged: (value) {},
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          QCard(
                            title: "Users",
                            subtitle: "November users",
                            actions: [
                              const Badge(
                                label: Text(
                                  "4",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                child: Icon(Icons.notifications),
                              ),
                              const SizedBox(
                                width: 12.0,
                              ),
                              const Icon(
                                Icons.developer_board,
                                size: 24.0,
                              ),
                            ],
                            children: [
                              QTextField(
                                label: "Email",
                                validator: Validator.required,
                                value: "user@demo.com",
                                onChanged: (value) {},
                              ),
                              QTextField(
                                label: "Password",
                                obscure: true,
                                validator: Validator.required,
                                suffixIcon: Icons.password,
                                value: "123456",
                                onChanged: (value) {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: QCard(
                        title: "Address",
                        subtitle: "Bogor",
                        padding: const EdgeInsets.all(0.0),
                        children: [
                          // Text(
                          //   "text",
                          //   style: TextStyle(
                          //     fontSize: 16.0,
                          //   ),
                          // ),
                          // const SizedBox(
                          //   height: 12.0,
                          // ),
                          Builder(
                            builder: (context) {
                              List<Marker> allMarkers = [
                                Marker(
                                  point: LatLng(
                                    -6.1754234,
                                    106.827224,
                                  ),
                                  child: const Icon(
                                    Icons.pin_drop,
                                    color: Colors.red,
                                    size: 24,
                                  ),
                                ),
                              ];
                              return SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.4,
                                child: FlutterMap(
                                  options: MapOptions(
                                    center: LatLng(
                                      -6.1754234,
                                      106.827224,
                                    ),
                                    zoom: 16,
                                    interactiveFlags: InteractiveFlag.all -
                                        InteractiveFlag.rotate,
                                  ),
                                  children: [
                                    TileLayer(
                                      urlTemplate:
                                          'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                                      userAgentPackageName:
                                          'dev.fleaflet.flutter_map.example',
                                    ),
                                    MarkerLayer(
                                      markers: allMarkers,
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 200,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<CgDashboardView> createState() => CgDashboardController();
}
