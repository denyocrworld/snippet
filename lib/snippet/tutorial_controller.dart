import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

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
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  double progress = 0.0;
  late Timer timer;
  start() async {
    timer = Timer.periodic(Duration(milliseconds: 50), (timer) {
      progress += 0.02;
      setState(() {});

      if (progress == 1.0) {
        timer.cancel();
      }
    });
  }
}
