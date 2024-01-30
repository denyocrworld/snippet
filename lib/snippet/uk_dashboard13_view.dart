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
            children: [
              QAutoComplete(
                label: "Favorite employee",
                validator: Validator.required,
                items: [
                  {
                    "label": "Jackie Roo",
                    "value": "101",
                    "info": "Hacker",
                  },
                  {
                    "label": "Dan Milton",
                    "value": "102",
                    "info": "UI/UX Designer",
                  },
                  {
                    "label": "Ryper Roo",
                    "value": "103",
                    "info": "Android Developer",
                  }
                ],
                value: null,
                onChanged: (value, label) {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<UkDashboard13View> createState() => UkDashboard13Controller();
}
