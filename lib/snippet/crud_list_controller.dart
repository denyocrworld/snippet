import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/module/template/crud_service/crud_service.dart';

class CrudListController extends State<CrudListView> {
  static late CrudListController instance;
  late CrudListView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List items = [];
  getItems({
    int page = 1,
  }) async {
    return CrudService().get(
      page: page,
    );
  }

  deleteItem(int id) async {
    showLoading();
    await CrudService().delete(id);
    await reload();
    hideLoading();
  }

  search(String value) async {
    print("search?");
    await reload();
  }

  reload() async {
    await ExListView.instance["crud_list"]?.reload();
  }
}
