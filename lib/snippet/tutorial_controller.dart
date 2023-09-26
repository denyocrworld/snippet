import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/module/tutorial/service/tutorial_customer_service.dart';
import 'package:hyper_ui/module/tutorial/service/tutorial_product_service.dart';

class TutorialController extends State<TutorialView> {
  static late TutorialController instance;
  late TutorialView view;

  @override
  void initState() {
    instance = this;

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  generateDummies() async {
    showLoading();
    await TutorialProductService().generateProducts();
    await TutorialCustomerService().generateCustomers();
    hideLoading();
  }
}
