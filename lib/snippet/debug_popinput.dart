// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../../../shared/util/dialog/show_custom_dialog.dart';
import '../../../state_util.dart';

class DebugPopInput extends StatelessWidget {
  final Function(String) onSubmitted;
  final String value;
  final Widget child;
  const DebugPopInput({
    Key? key,
    required this.onSubmitted,
    required this.child,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        String input = value;
        FocusNode focusNode = FocusNode();
        Future.delayed(
          Duration(milliseconds: 250),
          () {
            focusNode.requestFocus();
          },
        );
        await showCustomDialog(
          title: "Input",
          children: [
            TextFormField(
              initialValue: input,
              focusNode: focusNode,
              onFieldSubmitted: (value) {
                input = value;
                Get.back();
              },
            ),
          ],
        );
        onSubmitted(input);
      },
      child: child,
    );
  }
}
