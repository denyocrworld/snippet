/*
CAPEKNGODING.COM
*/
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/game_view.dart';

class GameController extends State<GameView> {
  static late GameController instance;
  late GameView view;

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

  double left = 20;
  double bottom = 20;
  ScrollController scrollController = ScrollController();

  late Timer timer;
  startGame() async {
    timer = Timer.periodic(Duration(milliseconds: 10), (timer) {
      left += 2;
      setState(() {});
    });
  }

  stopGame() async {
    left = 20;
    timer.cancel();
    setState(() {});
  }

  jump() async {
    if (bottom > 40) return;
    bottom = 240;
    setState(() {});

    await Future.delayed(Duration(milliseconds: 240));

    bottom = 40;
    setState(() {});
  }
}
