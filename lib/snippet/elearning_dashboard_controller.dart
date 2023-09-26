import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class ElearningDashboardController extends State<ElearningDashboardView> {
  static late ElearningDashboardController instance;
  late ElearningDashboardView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List courses = [
    {
      "course_name": "Graphic Design",
      "cover":
          "https://img.freepik.com/free-photo/book-with-green-board-background_1150-3836.jpg?w=996&t=st=1695472548~exp=1695473148~hmac=696724f4477d61ee2648a15b53827c10d27ea513e16527277a4e01409a5f3e81",
      "lesson_count": 24,
      "price": 25.49,
    },
    {
      "course_name": "Flutter",
      "cover":
          "https://images.unsplash.com/photo-1593698054469-2bb6fdf4b512?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1587&q=80",
      "lesson_count": 24,
      "price": 190.23,
    },
    {
      "course_name": "React",
      "cover":
          "https://images.unsplash.com/photo-1535982330050-f1c2fb79ff78?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1674&q=80",
      "lesson_count": 24,
      "price": 61.32,
    },
    {
      "course_name": "Sql Database",
      "cover":
          "https://images.unsplash.com/photo-1522202176988-66273c2fd55f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1742&q=80",
      "lesson_count": 24,
      "price": 41.44,
    },
    {
      "course_name": "Firebase",
      "cover":
          "https://images.unsplash.com/photo-1516534775068-ba3e7458af70?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1740&q=80",
      "lesson_count": 24,
      "price": 33.49,
    }
  ];

  List myCourses = [
    {
      "course_name": "React",
      "cover":
          "https://images.unsplash.com/photo-1535982330050-f1c2fb79ff78?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1674&q=80",
      "lesson_count": 24,
      "rating": 4.5,
      "price": 61.32,
    },
    {
      "course_name": "Sql Database",
      "cover":
          "https://images.unsplash.com/photo-1522202176988-66273c2fd55f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1742&q=80",
      "lesson_count": 24,
      "rating": 3.5,
      "price": 41.44,
    },
    {
      "course_name": "Firebase",
      "cover":
          "https://images.unsplash.com/photo-1516534775068-ba3e7458af70?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1740&q=80",
      "lesson_count": 24,
      "rating": 4.7,
      "price": 33.49,
    },
    {
      "course_name": "Graphic Design",
      "cover":
          "https://img.freepik.com/free-photo/book-with-green-board-background_1150-3836.jpg?w=996&t=st=1695472548~exp=1695473148~hmac=696724f4477d61ee2648a15b53827c10d27ea513e16527277a4e01409a5f3e81",
      "lesson_count": 24,
      "rating": 4.9,
      "price": 25.49,
    },
    {
      "course_name": "Flutter",
      "cover":
          "https://images.unsplash.com/photo-1593698054469-2bb6fdf4b512?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1587&q=80",
      "lesson_count": 24,
      "rating": 5.0,
      "price": 190.23,
    },
  ];

  List categories = [
    {
      "icon": MdiIcons.palette,
      "color": Colors.pink,
      "label": "Design",
    },
    {
      "icon": MdiIcons.phone,
      "color": Colors.blue,
      "label": "Development",
    },
    {
      "icon": MdiIcons.music,
      "color": Colors.green,
      "label": "Music",
    },
    {
      "icon": MdiIcons.soundbar,
      "color": Colors.red,
      "label": "Marketing",
    },
    {
      "icon": MdiIcons.camera,
      "color": Colors.orange,
      "label": "Photography",
    },
  ];
}
