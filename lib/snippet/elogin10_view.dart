import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/elogin10_controller.dart';

class Elogin10View extends StatefulWidget {
  const Elogin10View({Key? key}) : super(key: key);

  Widget build(context, Elogin10Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Elogin10"),
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
  State<Elogin10View> createState() => Elogin10Controller();
}
