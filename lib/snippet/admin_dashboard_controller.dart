import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class AdminDashboardController extends State<AdminDashboardView> {
  static late AdminDashboardController instance;
  late AdminDashboardView view;

  @override
  void initState() {
    instance = this;
    getTodos();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  doLogout() async {
    Get.offAll(LoginView());
  }

  List todos = [];
  getTodos() async {
    todos = await TodoService().get();
    setState(() {});
  }
}
