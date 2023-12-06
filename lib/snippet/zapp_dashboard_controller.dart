import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class ZappDashboardController extends State<ZappDashboardView> {
  static late ZappDashboardController instance;
  late ZappDashboardView view;

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

  List partners = [
    {
      "label": "Ambassador",
      "photo":
          "https://images.unsplash.com/photo-1601647998485-76bd9e0596c8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1339&q=80",
    },
    {
      "label": "Crave Bakery",
      "photo":
          "https://images.unsplash.com/photo-1510226621137-6285ff880db6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1287&q=80",
    },
    {
      "label": "Eco Saathi",
      "photo":
          "https://images.unsplash.com/photo-1564227503787-ad186f508e6f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1365&q=80",
    },
    {
      "label": "Kz Mart",
      "photo":
          "https://images.unsplash.com/photo-1542372041-620dfb05997c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1229&q=80",
    },
    {
      "label": "Geometry Mart",
      "photo":
          "https://images.unsplash.com/photo-1615598255772-be0e66beb31d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1287&q=80",
    },
    {
      "label": "Women Mart",
      "photo":
          "https://images.unsplash.com/photo-1563899911-1cd41c199d2a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1471&q=80",
    }
  ];
}
