import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/error_view.dart';

class ErrorController extends State<ErrorView> {
  static late ErrorController instance;
  late ErrorView view;

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
