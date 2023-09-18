import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/ecategory5_controller.dart';

class Ecategory5View extends StatefulWidget {
  const Ecategory5View({Key? key}) : super(key: key);

  Widget build(context, Ecategory5Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Ecategory5"),
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
  State<Ecategory5View> createState() => Ecategory5Controller();
}
