import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CrudFormView extends StatefulWidget {
  final Map<String, dynamic>? item;
  CrudFormView({
    Key? key,
    this.item,
  }) : super(key: key);

  Widget build(context, CrudFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("CrudForm"),
        actions: [],
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                QTextField(
                  label: "Product name",
                  validator: Validator.required,
                  value: controller.productName,
                  onChanged: (value) {
                    controller.productName = value;
                  },
                ),
                QNumberField(
                  label: "Price",
                  validator: Validator.required,
                  value: controller.price?.toString(),
                  onChanged: (value) {
                    controller.price = int.tryParse(value) ?? 0;
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: QActionButton(
        label: "Save",
        onPressed: () => controller.doSave(),
      ),
    );
  }

  @override
  State<CrudFormView> createState() => CrudFormController();
}
