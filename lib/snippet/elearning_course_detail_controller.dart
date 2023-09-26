import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/elearning_course_detail_view.dart';

class ElearningCourseDetailController extends State<ElearningCourseDetailView> {
  static late ElearningCourseDetailController instance;
  late ElearningCourseDetailView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List lessons = [
    {
      "lesson_name": "Dart Basic",
      "url": "url-video",
      "time": "43:50",
      "played_at": "43:50",
    },
    {
      "lesson_name": "Flutter basic",
      "url": "url-video",
      "time": "33:50",
      "played_at": "09:23",
    },
    {
      "lesson_name": "Slicing UI",
      "url": "url-video",
      "time": "26:50",
      "played_at": "22:29",
    },
    {
      "lesson_name": "Studi Kasus - POS App",
      "url": "url-video",
      "time": "55:50",
      "played_at": "44:30",
    },
    {
      "lesson_name": "Programming basic",
      "url": "url-video",
      "time": "59:50",
      "played_at": "00:00",
    }
  ];
}
