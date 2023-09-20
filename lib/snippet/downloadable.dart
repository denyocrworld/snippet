// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:screenshot/screenshot.dart';

class Downloadable extends StatefulWidget {
  final Widget child;
  const Downloadable({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<Downloadable> createState() => DownloadableState();
}

class DownloadableState extends State<Downloadable> {
  static late DownloadableState instance;
  Uint8List? _imageFile;
  ScreenshotController screenshotController = ScreenshotController();

  capture() async {
    String name =
        DebugController.instance.title.replaceAll(" ", "_").toLowerCase();
    screenshotController.capture().then((Uint8List? image) {
      _imageFile = image;
      File.fromRawPath(_imageFile!);
      File("tmp/$name.png").writeAsBytesSync(_imageFile!);
      setState(() {});
    }).catchError((onError) {
      print(onError);
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    instance = this;

    return Screenshot(
      controller: screenshotController,
      child: widget.child,
    );
  }
}
