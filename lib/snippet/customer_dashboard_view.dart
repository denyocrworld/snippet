import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/customer_dashboard_controller.dart';

class CustomerDashboardView extends StatefulWidget {
  const CustomerDashboardView({Key? key}) : super(key: key);

  Widget build(context, CustomerDashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CustomerDashboard"),
        actions: [
          IconButton(
            onPressed: () => controller.doLogout(),
            icon: const Icon(
              Icons.logout,
              size: 24.0,
            ),
          ),
        ],
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
  State<CustomerDashboardView> createState() => CustomerDashboardController();
}
