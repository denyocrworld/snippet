import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class LatihanRemoteDatasourceView extends StatefulWidget {
  const LatihanRemoteDatasourceView({Key? key}) : super(key: key);

  Widget build(context, LatihanRemoteDatasourceController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LatihanRemoteDatasource"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                QUserDropdown(
                  onChanged: (label, value) {},
                ),
                QDropdownField(
                  label: "Country",
                  validator: Validator.required,
                  items: [
                    {
                      "label": "Indonesia",
                      "value": "Indonesia",
                    },
                    {
                      "label": "Jerman",
                      "value": "Jerman",
                    }
                  ],
                  onChanged: (value, label) {
                    controller.getProvinceList(value);
                  },
                ),
                if (controller.provinces.isNotEmpty)
                  QDropdownField(
                    label: "Province",
                    validator: Validator.required,
                    items: controller.provinces,
                    onChanged: (value, label) {},
                  ),
                if (controller.userDropdownValues.isNotEmpty)
                  QSwitch(
                    label: "Member",
                    validator: Validator.atLeastOneitem,
                    items: controller.userDropdownValues,
                    value: null,
                    onChanged: (values, ids) {},
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
  State<LatihanRemoteDatasourceView> createState() =>
      LatihanRemoteDatasourceController();
}
