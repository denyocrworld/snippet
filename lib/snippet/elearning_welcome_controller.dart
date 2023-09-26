import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/elearning_welcome_view.dart';

class ElearningWelcomeController extends State<ElearningWelcomeView> {
  static late ElearningWelcomeController instance;
  late ElearningWelcomeView view;

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
