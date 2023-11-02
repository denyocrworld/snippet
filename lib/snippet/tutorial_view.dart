import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:latlong2/latlong.dart';

class TutorialView extends StatefulWidget {
  TutorialView({
    Key? key,
  }) : super(key: key);

  Widget build(context, TutorialController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                "${controller.products.value.length}",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TutorialView> createState() => TutorialController();
}
