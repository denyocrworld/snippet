import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CgCarouselController extends State<CgCarouselView> {
  static late CgCarouselController instance;
  late CgCarouselView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int currentIndex = 0;
  final CarouselController carouselController = CarouselController();
}
