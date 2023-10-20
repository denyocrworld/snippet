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
  bool socialMedia = true;

  List backgrounds = [
    "https://i.ibb.co/mSn8dfP/Dark-Blue-White-Brush-Stroke-Business-Ideas-You-Tube-Thumbnail-30.png",
    "https://images.unsplash.com/photo-1620641788421-7a1c342ea42e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80",
    "https://images.unsplash.com/photo-1523821741446-edb2b68bb7a0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80",
    "https://images.unsplash.com/photo-1478760329108-5c3ed9d495a0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80",
    "https://images.unsplash.com/photo-1614850523459-c2f4c699c52e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80",
  ];

  int backgroundIndex = 0;
  String get background {
    return backgrounds[backgroundIndex];
  }

  updateBackground() async {
    backgroundIndex++;
    if (backgroundIndex == backgrounds.length) {
      backgroundIndex = 0;
    }
    setState(() {});
    saveConfig();
  }

  updateSocialMedia() {
    socialMedia = !socialMedia;
    setState(() {});
    saveConfig();
  }

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
    tag = prefs.getString("tag") ?? "Flutter";
    title = prefs.getString("title") ?? "Dashboard1";
    subtitle = prefs.getString("subtitle") ?? "Flutter";
    socialMedia = prefs.getBool("social_media") ?? true;
    backgroundIndex = prefs.getInt("background") ?? 0;
    setState(() {});
  }

  saveConfig() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool("preview_mode", previewMode);
    prefs.setString("tag", tag);
    prefs.setString("title", title);
    prefs.setString("subtitle", subtitle);
    prefs.setBool("social_media", socialMedia);
    prefs.setInt("background", backgroundIndex);
  }

  double get factor {
    if (socialMedia == false) return 1.2;
    return 1.0;
  }

  bool loading = false;
  refresh() async {
    loading = true;
    setState(() {});

    await Future.delayed(Duration(milliseconds: 250));

    loading = false;
    setState(() {});
  }
}
