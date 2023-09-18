import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../view/crud_module_manager_list_view.dart';

class CrudModuleManagerListController extends State<CrudModuleManagerListView> {
  static late CrudModuleManagerListController instance;
  late CrudModuleManagerListView view;

  @override
  void initState() {
    instance = this;
    load();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int get randomNumber => Random().nextInt(8000) + 1000;

  List modules = [];
  addModule() async {
    modules.add({
      "table_name": "table_${randomNumber}",
      "show_fields": false,
      "fields": [],
      "relations": [],
    });
    setState(() {});
    save();
  }

  deleteModule(module) async {
    modules.removeWhere((f) => f["table_name"] == module["table_name"]);
    print("remove ${module["table_name"]}");
    setState(() {});
    save();
  }

  addField(module) async {
    var index = modules.indexOf(module);
    modules[index]["fields"] ??= [];
    modules[index]["fields"].add({
      "field_name": "field_name_${randomNumber}",
      "type": "string",
    });
    setState(() {});
    save();
  }

  updateVisibility(module) async {
    var index = modules.indexOf(module);
    modules[index]["show_fields"] = !modules[index]["show_fields"];
    setState(() {});
    save();
  }

  removeField(module, fieldName) async {
    var index = modules.indexOf(module);
    modules[index]["fields"] ??= [];
    (modules[index]["fields"] as List).removeWhere(
      (f) => f["field_name"] == fieldName,
    );
    setState(() {});
    save();
  }

  addRelations(module) async {
    var index = modules.indexOf(module);
    modules[index]["relations"] ??= [];
    modules[index]["relations"].add({
      "name": "relation_${randomNumber}",
      "type": "one_to_one",
      "table": "table_${randomNumber}",
      "field": "id",
    });
    setState(() {});
    save();
  }

  removeRelation(module, name) async {
    var index = modules.indexOf(module);
    modules[index]["relations"] ??= [];
    (modules[index]["relations"] as List).removeWhere(
      (f) => f["name"] == name,
    );
    setState(() {});
    save();
  }

  load() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final obj = await prefs.getString("modules") ?? "[]";
    modules = jsonDecode(obj);
    setState(() {});
  }

  save() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("modules", jsonEncode(modules));
    setState(() {});
  }

  reset() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    modules = [];
    prefs.setString("modules", jsonEncode(modules));
    setState(() {});
  }
}
