import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class AdminDashboardView extends StatefulWidget {
  AdminDashboardView({Key? key}) : super(key: key);

  Widget build(context, AdminDashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("AdminDashboard"),
        actions: [
          IconButton(
            onPressed: () => controller.doLogout(),
            icon: Icon(
              Icons.logout,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: controller.todos.length,
        padding: EdgeInsets.all(20.0),
        physics: ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          var item = controller.todos[index];
          return Card(
            child: ListTile(
              title: Text(item["title"]),
              subtitle: Text("${item["status"]}"),
            ),
          );
        },
      ),
    );
  }

  @override
  State<AdminDashboardView> createState() => AdminDashboardController();
}
