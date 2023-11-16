import 'dart:math';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:latlong2/latlong.dart';

class TutorialView extends StatefulWidget {
  TutorialView({
    Key? key,
  }) : super(key: key);

  Widget build(context, TutorialController controller) {
    controller.view = this;
    /*
    @fallen_angel
    urutan bahasa yang paling mudah di pelajari sampe ke susah apa bang

    1. Python
    2. Dart
    3. Javascript
    4. C#
    5. Java
    6. PHP
    7. C++
    8. Golang

    - Pelajari Basic
    - Perbanyak Praktek
    - Perbanyak Sharing
        (akan  mempercepat kita untuk memahami bahasa pemrograman)
        print
    - Kalau bisa fokus, jangan berusaha menguasai smuanya
      Front End
        Flutter => Dart
        React   => HTML, CSS, JS, TS, JSX
      Back End
        Laravel => PHP


    Paling mudah, bukan berarti paling cocok untuk kita.
    - Library-nya support gak nih utk aplikasi yang mau kita buat

    Face Recognition
    Misalnya:
    Oh ternyata kalo pake PHP library-nya ga ada,
    Di Python ada nih.

    Python
    
    */

    /*
    Variable
    Operator
    IF Statement
    List, Map
    Looping
    Function
    Async Function
    OOP
    Inheritance
    Abstraction
    Encapsulation
    Polymorphism

    Youtube
    Dokumentasi
    GitHub
    ChatGPT
    ELearning
    Kelas Online
    Bootcamp


    x Gak cukup belajar di kampus
    v Harus ngoding di luar kampus
      1 jam sehari

    100 hari = ngoding
    100 jam

    */
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(20.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1.0 / 1.4,
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),
        itemCount: controller.products.length,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          var item = controller.products[index];
          return Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          item["photo"],
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          6.0,
                        ),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          right: 6.0,
                          top: 8.0,
                          child: CircleAvatar(
                            radius: 14.0,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 14.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  item["product_name"],
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  item["category"],
                  style: TextStyle(
                    fontSize: 12.0,
                  ),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  "${item["price"]}",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          )
              .animate()
              .moveX(
                begin: index % 2 == 0 ? 100 : -100,
                delay: ((index * 100) + 500).ms,
              )
              .fadeIn(
                delay: ((index * 100) + 500).ms,
              );
        },
      ),
    );
  }

  @override
  State<TutorialView> createState() => TutorialController();
}
