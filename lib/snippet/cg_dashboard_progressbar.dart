// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class CgDashboarProgressbar extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color color;
  final double value;
  const CgDashboarProgressbar({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 10.0,
            ),
          ),
          const SizedBox(
            height: 4.0,
          ),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 6.0,
          ),
          LinearProgressIndicator(
            color: color,
            backgroundColor: Color(0xffd8dbe0),
            value: value,
          ),
        ],
      ),
    );
  }
}
