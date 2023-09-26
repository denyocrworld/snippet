import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CustomerDashboardController extends State<CustomerDashboardView> {
  static late CustomerDashboardController instance;
  late CustomerDashboardView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  doLogout() async {
    Get.offAll(LoginView());
  }
}
