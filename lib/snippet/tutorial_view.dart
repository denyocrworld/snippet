
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

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

    Bahasa : Dart
    Framework: Flutter
    Flutter bisa digunakan untuk membuat Aplikasi:
    Android, IOS, Web, Desktop

    1. Pelajari Bahasa Pemrograman
    2. Pelajari Framework-nya
    3. Perbanyak Latihan
      - Perbanyak Latihan Bikin UI
      - Perbanyak Latihan Integrasi ke API
    4. Buat Portofolio    
      - 5 UI Aplikasi Populer
        (Tokopedia, Tiktok, Shopee, Netflix, Gojek)
        (1 Aplikasi, 1-3 halaman aja minimal)
      - 5 UI Aplikasi Random dari Dribbble
      - 1-3 Aplikasi yang interintegrasi dengan API
        > Movie API
        > Weather Api
        > JSON Placeholder

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
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: const Column(
            children: [],
          ),
        ),
      ),
    );
  }

  @override
  State<TutorialView> createState() => TutorialController();
}
