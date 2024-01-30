//#GROUP_TEMPLATE hyperui_form

import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CgHyperuiFormView extends StatefulWidget {
  CgHyperuiFormView({Key? key}) : super(key: key);

  Widget build(context, CgHyperuiFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("Deprecreated"),
      ),
    );
  }

  @override
  State<CgHyperuiFormView> createState() => CgHyperuiFormController();
}
