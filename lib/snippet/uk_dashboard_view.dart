
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/uk_dashboard_controller.dart';

class UkDashboardView extends StatefulWidget {
  const UkDashboardView({Key? key}) : super(key: key);

  Widget build(context, UkDashboardController controller) {
  controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("UkDashboard"),
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
  State<UkDashboardView> createState() => UkDashboardController();
}
    