
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/uk_dashboard13_controller.dart';

class UkDashboard13View extends StatefulWidget {
  const UkDashboard13View({Key? key}) : super(key: key);

  Widget build(context, UkDashboard13Controller controller) {
  controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("UkDashboard13"),
        actions: const [],
        ),
        body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
            children: const [],
            ),
        ),
      ),
    );
  }

  @override
  State<UkDashboard13View> createState() => UkDashboard13Controller();
}
    