import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/tutorial_product_detail_view.dart';

class TutorialProductDetailController extends State<TutorialProductDetailView> {
  static late TutorialProductDetailController instance;
  late TutorialProductDetailView view;

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
