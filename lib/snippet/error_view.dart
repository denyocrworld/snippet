import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/error_controller.dart';

class ErrorView extends StatefulWidget {
  const ErrorView({Key? key}) : super(key: key);

  Widget build(context, ErrorController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Error"),
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
  State<ErrorView> createState() => ErrorController();
}
