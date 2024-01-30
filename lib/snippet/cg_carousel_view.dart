import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

//#GROUP_TEMPLATE carousel
class CgCarouselView extends StatefulWidget {
  const CgCarouselView({Key? key}) : super(key: key);

  Widget build(context, CgCarouselController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Deprecreated"),
        actions: const [],
      ),
    );
  }

  @override
  State<CgCarouselView> createState() => CgCarouselController();
}
