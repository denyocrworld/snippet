import 'package:hyper_ui/core.dart';
import 'package:flutter/material.dart';

class CgMainController extends State<CgMainView> {
  static late CgMainController instance;
  late CgMainView view;
  bool lightMode = false;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  // Widget mainView = CgDashboardView();
  Widget mainView = CrudListView();
  updateView(Widget view) {
    mainView = view;
    setState(() {});
  }

  updateTheme() {
    lightMode = !lightMode;
    Get.mainTheme.value = lightMode ? getDefaultTheme() : getDarkTheme();
    setState(() {});
  }

  bool expanded = true;
  updateSidebarState() {
    expanded = !expanded;
    setState(() {});
  }
}
