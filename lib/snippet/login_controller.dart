import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

import '../../../../service/local_data_service/local_data_service.dart';

class LoginController extends State<LoginView> {
  static late LoginController instance;
  late LoginView view;

  @override
  void initState() {
    instance = this;
    email = DB.get("email");
    password = DB.get("password");
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String? email;
  String? password;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  doLogin() async {
    bool isNotValid = formKey.currentState!.validate() == false;
    if (isNotValid) {
      return;
    }

    showLoading();
    await AuthService().login(
      email: email!,
      password: password!,
    );
    hideLoading();

    if (AuthService.currentUser!.role == "admin") {
      Get.offAll(AdminDashboardView());
    } else if (AuthService.currentUser!.role == "customer") {
      Get.offAll(CustomerDashboardView());
    }
  }
}
