import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/tutorial_customer_view.dart';

class TutorialCustomerController extends State<TutorialCustomerView> {
  static late TutorialCustomerController instance;
  late TutorialCustomerView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
