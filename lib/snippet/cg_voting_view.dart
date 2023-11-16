import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/cg_voting_controller.dart';

class CgVotingView extends StatefulWidget {
  CgVotingView({Key? key}) : super(key: key);

  Widget build(context, CgVotingController controller) {
    controller.view = this;
    if (controller.voting.isEmpty) return Container();

    int prabowo = controller.voting["prabowo"];
    int ganjar = controller.voting["ganjar"];
    int anis = controller.voting["anis"];
    int golput = controller.voting["golput"];
    int voteCount = prabowo + anis + ganjar + golput;

    double percentageGolput = (golput / voteCount) * 100;

    List users = ["Prabowo", "Ganjar", "Anis"];
    List scores = [
      {
        "name": "Prabowo",
        "scores": prabowo,
        "percentage": (prabowo / voteCount) * 100,
      },
      {
        "name": "Anis",
        "scores": anis,
        "percentage": (anis / voteCount) * 100,
      },
      {
        "name": "Ganjar",
        "scores": ganjar,
        "percentage": (ganjar / voteCount) * 100,
      },
    ];

    scores.sort((a, b) => b["scores"].compareTo(a["scores"]));

    return Scaffold(
      appBar: AppBar(
        title: Text("CgVoting"),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Scrapping Chat Tiktok => NodeJs",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              Text(
                "UI => Flutter",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              Divider(),
              for (var item in scores)
                Container(
                  margin: const EdgeInsets.only(
                    bottom: 4.0,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 80.0,
                        child: Text(
                          "${item["name"]}",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 12.0,
                      ),
                      Container(
                        width: 40.0,
                        decoration: BoxDecoration(
                          color: Colors.grey[500],
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "${item["scores"]}",
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      Container(
                        width: 40.0,
                        decoration: BoxDecoration(
                          color: Colors.grey[500],
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "${double.parse(item["percentage"].toString()).toStringAsFixed(0)}%",
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              Divider(),
              Row(
                children: [
                  Text(
                    "Golput",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Container(
                    width: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.grey[500],
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "${golput}",
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  Container(
                    width: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.grey[500],
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "${double.parse(percentageGolput.toString()).toStringAsFixed(0)}%",
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Divider(),
              Row(
                children: [
                  Text(
                    "Vote Count",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Text(
                    "$voteCount",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
              Divider(),
              Builder(
                builder: (context) {
                  final List<Map> chartData = [
                    {
                      "year": "Prabowo",
                      "sales": ((prabowo / voteCount) * 100).floor(),
                    },
                    {
                      "year": "Ganjar",
                      "sales": ((ganjar / voteCount) * 100).floor(),
                    },
                    {
                      "year": "Anis",
                      "sales": ((anis / voteCount) * 100).floor(),
                    },
                    {
                      "year": "Golput",
                      "sales": ((golput / voteCount) * 100).floor(),
                    },
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
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<CgVotingView> createState() => CgVotingController();
}
