
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/uk_dashboard12_controller.dart';

class UkDashboard12View extends StatefulWidget {
  const UkDashboard12View({Key? key}) : super(key: key);

  Widget build(context, UkDashboard12Controller controller) {
  controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("UkDashboard12"),
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
  State<UkDashboard12View> createState() => UkDashboard12Controller();
}
    