import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../view/debug_view.dart';

class DebugController extends State<DebugView> {
  static late DebugController instance;
  late DebugView view;
  bool previewMode = false;

  String tag = "Slicing UI";
  String title = "EDashboard6";
  String subtitle = "Flutter";

  @override
  void initState() {
    instance = this;
    loadConfig();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  updatePreviewMode() {
    previewMode = !previewMode;
    setState(() {});
    saveConfig();
  }

  loadConfig() async {
    final prefs = await SharedPreferences.getInstance();
    previewMode = prefs.getBool("preview_mode") ?? false;
    setState(() {});
  }

  saveConfig() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool("preview_mode", previewMode);
  }
}
