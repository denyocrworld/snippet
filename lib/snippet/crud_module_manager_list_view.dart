import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CrudModuleManagerListView extends StatefulWidget {
  CrudModuleManagerListView({Key? key}) : super(key: key);

  Widget build(context, CrudModuleManagerListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("CrudModuleManagerList"),
        actions: [],
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                QButton(
                  width: 180.0,
                  label: "Add Module",
                  prefixIcon: Icons.add,
                  onPressed: () => controller.addModule(),
                ),
                const SizedBox(
                  width: 12.0,
                ),
                QButton(
                  width: 180.0,
                  label: "Reset",
                  color: dangerColor,
                  prefixIcon: Icons.add,
                  onPressed: () => controller.reset(),
                ),
                const SizedBox(
                  width: 12.0,
                ),
                QButton(
                  width: 180.0,
                  label: "Export",
                  color: infoColor,
                  prefixIcon: Icons.import_export,
                  onPressed: () => controller.export(),
                )
              ],
            ),
            const SizedBox(
              height: 12.0,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: controller.modules.length,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int moduleIndex) {
                  Map<String, dynamic> item = controller.modules[moduleIndex];
                  int number = moduleIndex + 1;
                  List fields = item["fields"];
                  List relations = item["relations"];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          ExcludeFocus(
                            child: Container(
                              width: 32.0,
                              height: 32.0,
                              margin: const EdgeInsets.only(
                                bottom: 16.0,
                              ),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.all(0.0),
                                  backgroundColor: primaryColor,
                                ),
                                onPressed: () =>
                                    controller.updateVisibility(item),
                                child: Icon(
                                  item["show_fields"] == false
                                      ? MdiIcons.chevronRight
                                      : MdiIcons.chevronUp,
                                  size: 16.0,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 12.0,
                          ),
                          Expanded(
                            child: QTextField(
                              label: "Module Name",
                              value: item["table_name"],
                              validator: Validator.required,
                              onChanged: (value) {
                                item["table_name"] = value;
                              },
                            ),
                          ),
                        ],
                      ),
                      if (item["show_fields"] == true)
                        Container(
                          padding: const EdgeInsets.only(
                            left: 20.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.only(
                                  left: 40.0,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    QButton(
                                      width: 200.0,
                                      label: "Add Field",
                                      size: xs,
                                      prefixIcon: Icons.add,
                                      onPressed: () =>
                                          controller.addField(item),
                                    ),
                                    const SizedBox(
                                      width: 12.0,
                                    ),
                                    QButton(
                                      width: 200.0,
                                      label: "Delete Module",
                                      size: xs,
                                      color: dangerColor,
                                      prefixIcon: Icons.remove,
                                      onPressed: () =>
                                          controller.deleteModule(item),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 12.0,
                              ),
                              ListView.builder(
                                padding: const EdgeInsets.only(
                                  left: 40.0,
                                ),
                                itemCount: fields.length,
                                shrinkWrap: true,
                                physics: const ScrollPhysics(),
                                itemBuilder:
                                    (BuildContext context, int fieldIndex) {
                                  var field = fields[fieldIndex];
                                  return Row(
                                    children: [
                                      Container(
                                        width: 200,
                                        child: QTextField(
                                          label: "Name",
                                          validator: Validator.required,
                                          value: field["field_name"],
                                          onChanged: (value) {
                                            field["field_name"] = value;
                                          },
                                          onSubmitted: (value) {},
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 12.0,
                                      ),
                                      Container(
                                        width: 160,
                                        child: QDropdownField(
                                          label: "Type",
                                          validator: Validator.required,
                                          items: [
                                            {
                                              "label": "string",
                                              "value": "string",
                                            },
                                            {
                                              "label": "int",
                                              "value": "int",
                                            },
                                            {
                                              "label": "double",
                                              "value": "double",
                                            },
                                            {
                                              "label": "datetime",
                                              "value": "datetime",
                                            },
                                            {
                                              "label": "timestamp",
                                              "value": "timestamp",
                                            }
                                          ],
                                          value: field["type"] ?? "int",
                                          onChanged: (value, label) {
                                            field["type"] = value;
                                            controller.save();
                                          },
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 12.0,
                                      ),
                                      Container(
                                        width: 160.0,
                                        child: QDropdownField(
                                          label: "Nullable",
                                          validator: Validator.required,
                                          items: [
                                            {
                                              "label": "yes",
                                              "value": "yes",
                                            },
                                            {
                                              "label": "no",
                                              "value": "no",
                                            },
                                          ],
                                          value: field["nullable"] ?? "yes",
                                          onChanged: (value, label) {
                                            field["nullable"] = value;
                                            controller.save();
                                          },
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 12.0,
                                      ),
                                      Container(
                                        width: 160.0,
                                        child: QDropdownField(
                                          label: "Form Type",
                                          validator: Validator.required,
                                          items: [
                                            {
                                              "label": "textfield",
                                              "value": "textfield",
                                            },
                                            {
                                              "label": "numberfield",
                                              "value": "numberfield",
                                            },
                                            {
                                              "label": "memofield",
                                              "value": "memofield",
                                            },
                                            {
                                              "label": "datefield",
                                              "value": "datefield",
                                            },
                                            {
                                              "label": "image_picker",
                                              "value": "image_picker",
                                            }
                                          ],
                                          value:
                                              field["form_type"] ?? "textfield",
                                          onChanged: (value, label) {
                                            field["form_type"] = value;
                                            controller.save();
                                          },
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 12.0,
                                      ),
                                      Container(
                                        width: 32.0,
                                        height: 32.0,
                                        margin: const EdgeInsets.only(
                                          bottom: 16.0,
                                        ),
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            padding: const EdgeInsets.all(0.0),
                                            backgroundColor: dangerColor,
                                          ),
                                          onPressed: () =>
                                              controller.removeField(
                                                  item, field["field_name"]),
                                          child: Icon(
                                            MdiIcons.close,
                                            size: 16.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                  left: 40.0,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        QButton(
                                          width: 220.0,
                                          label: "Add Relationship",
                                          size: xs,
                                          color: infoColor,
                                          prefixIcon: Icons.link,
                                          onPressed: () =>
                                              controller.addRelations(item),
                                        ),
                                        const SizedBox(
                                          width: 12.0,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 12.0,
                                    ),
                                    ListView.builder(
                                      itemCount: relations.length,
                                      shrinkWrap: true,
                                      physics: const ScrollPhysics(),
                                      itemBuilder: (BuildContext context,
                                          int relationIndex) {
                                        var relation = relations[relationIndex];
                                        return Row(
                                          children: [
                                            Container(
                                              width: 200.0,
                                              child: QTextField(
                                                label: "RelationName",
                                                validator: Validator.required,
                                                value:
                                                    relation["relation_name"],
                                                onChanged: (value) {
                                                  relation['relation_name'] =
                                                      value;
                                                },
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 12.0,
                                            ),
                                            Container(
                                              width: 160.0,
                                              child: QDropdownField(
                                                label: "Type",
                                                validator: Validator.required,
                                                items: [
                                                  {
                                                    "label": "one_to_one",
                                                    "value": "one_to_one",
                                                  },
                                                  {
                                                    "label": "one_to_many",
                                                    "value": "one_to_many",
                                                  }
                                                ],
                                                value: relation["type"],
                                                onChanged: (value, label) {
                                                  relation['type'] = value;
                                                },
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 12.0,
                                            ),
                                            Container(
                                              width: 160,
                                              child: QTextField(
                                                label: "Source Field",
                                                validator: Validator.required,
                                                value: relation["source_field"],
                                                onChanged: (value) {
                                                  relation['source_field'] =
                                                      value;
                                                },
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 12.0,
                                            ),
                                            Container(
                                              width: 160,
                                              child: QTextField(
                                                label: "Target Table",
                                                validator: Validator.required,
                                                value: relation["target_table"],
                                                onChanged: (value) {
                                                  relation['target_table'] =
                                                      value;
                                                },
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 12.0,
                                            ),
                                            Container(
                                              width: 160,
                                              child: QTextField(
                                                label: "Target Field",
                                                validator: Validator.required,
                                                value: relation["target_field"],
                                                onChanged: (value) {
                                                  relation['target_field'] =
                                                      value;
                                                },
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 12.0,
                                            ),
                                            Container(
                                              width: 32.0,
                                              height: 32.0,
                                              margin: const EdgeInsets.only(
                                                bottom: 16.0,
                                              ),
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  padding:
                                                      const EdgeInsets.all(0.0),
                                                  backgroundColor: dangerColor,
                                                ),
                                                onPressed: () =>
                                                    controller.removeRelation(
                                                        item,
                                                        relation[
                                                            "relation_name"]),
                                                child: Icon(
                                                  MdiIcons.close,
                                                  size: 16.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<CrudModuleManagerListView> createState() =>
      CrudModuleManagerListController();
}
