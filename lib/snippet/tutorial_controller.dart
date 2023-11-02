import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class TutorialController extends State<TutorialView> {
  static late TutorialController instance;
  late TutorialView view;

  late Timer timer;
  @override
  void initState() {
    instance = this;
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      products.value.add(Random().nextInt(1000));
      products.value = products.value;
      setState(() {});
    });
    Future.delayed(Duration(seconds: 1), () {
      products.addListener(() {
        print("Value changed!");
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  ValueNotifier<List> products = ValueNotifier<List>([]);
}

// extension ListExtension on List {
//   ValueNotifier<List> get obs {
//     ValueNotifier<List> listv = ValueNotifier<List>(
//       this,
//     );
//     return listv;
//   }
// }
