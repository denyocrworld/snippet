// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DebugSocialMedia extends StatelessWidget {
  final String url;
  final Color color;
  final Color? iconColor;
  final String label;
  const DebugSocialMedia({
    Key? key,
    required this.url,
    required this.color,
    required this.label,
    this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.0,
      height: 80.0,
      padding: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 12.0,
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            url,
            width: 24.0,
            height: 24.0,
            fit: BoxFit.fill,
            color: iconColor,
          ),
          const SizedBox(
            width: 8.0,
          ),
          Expanded(
            child: Text(
              label,
              textAlign: TextAlign.left,
              style: GoogleFonts.robotoCondensed(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
