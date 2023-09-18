import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/elogin8_controller.dart';

class Elogin8View extends StatefulWidget {
  const Elogin8View({Key? key}) : super(key: key);

  Widget build(context, Elogin8Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Elogin8"),
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
  State<Elogin8View> createState() => Elogin8Controller();
}
