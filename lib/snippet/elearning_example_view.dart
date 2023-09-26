
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/elearning_example_controller.dart';

class ElearningExampleView extends StatefulWidget {
    const ElearningExampleView({Key? key}) : super(key: key);

    Widget build(context, ElearningExampleController controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
        title: const Text("ElearningExample"),
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
    State<ElearningExampleView> createState() => ElearningExampleController();
}
    