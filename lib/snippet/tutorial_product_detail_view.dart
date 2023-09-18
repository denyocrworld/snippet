import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hyper_ui/core.dart';
import '../controller/tutorial_product_detail_controller.dart';

class TutorialProductDetailView extends StatefulWidget {
  final Map<String, dynamic> item;
  TutorialProductDetailView({
    Key? key,
    required this.item,
  }) : super(key: key);

  Widget build(context, TutorialProductDetailController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("TutorialProductDetail"),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Hero(
                tag: "photo",
                child: Container(
                  height: 160.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        item["photo"],
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        8.0,
                      ),
                    ),
                  ),
                ),
              ).animate().slideY(
                    duration: 1000.ms,
                  ),
              const SizedBox(
                height: 20.0,
              ),
              Hero(
                tag: "product_name",
                child: Text(
                  item["product_name"],
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ).animate().fadeIn(
                      duration: 2000.ms,
                    ),
              ),
            ],
          ),
        ),
      ),
    ).animate().shake(
          duration: 2000.ms,
        );
  }

  @override
  State<TutorialProductDetailView> createState() =>
      TutorialProductDetailController();
}
