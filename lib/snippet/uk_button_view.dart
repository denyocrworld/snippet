import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class UkButtonView extends StatefulWidget {
  const UkButtonView({Key? key}) : super(key: key);

  Widget build(context, UkButtonController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("UkButton"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              QButton(
                label: "xs",
                color: primaryColor,
                size: xs,
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QButton(
                label: "sm",
                color: primaryColor,
                size: sm,
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QButton(
                label: "md",
                color: primaryColor,
                size: md,
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QButton(
                label: "lg",
                color: primaryColor,
                size: lg,
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QButton(
                label: "xl",
                color: primaryColor,
                size: xl,
                onPressed: () {},
              ),
              Divider(),
              Divider(),
              QButton(
                label: "Primary",
                color: primaryColor,
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QButton(
                label: "Secondary",
                color: secondaryColor,
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QButton(
                label: "Success",
                color: successColor,
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QButton(
                label: "Danger",
                color: dangerColor,
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QButton(
                label: "Warning",
                color: warningColor,
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QButton(
                label: "Info",
                color: infoColor,
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QButton(
                label: "Disabled",
                color: disabledColor,
                onPressed: () {},
              ),
              Divider(),
              QButton(
                label: "Primary",
                icon: Icons.add,
                color: primaryColor,
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QButton(
                label: "Secondary",
                icon: Icons.add,
                color: secondaryColor,
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QButton(
                label: "Success",
                icon: Icons.add,
                color: successColor,
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QButton(
                label: "Danger",
                icon: Icons.add,
                color: dangerColor,
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QButton(
                label: "Warning",
                icon: Icons.add,
                color: warningColor,
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QButton(
                label: "Info",
                icon: Icons.add,
                color: infoColor,
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QButton(
                label: "Disabled",
                icon: Icons.add,
                color: disabledColor,
                onPressed: () {},
              ),
              Divider(),
              QButton(
                label: "Primary",
                sufixIcon: Icons.add,
                color: primaryColor,
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QButton(
                label: "Secondary",
                sufixIcon: Icons.add,
                color: secondaryColor,
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QButton(
                label: "Success",
                sufixIcon: Icons.add,
                color: successColor,
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QButton(
                label: "Danger",
                sufixIcon: Icons.add,
                color: dangerColor,
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QButton(
                label: "Warning",
                sufixIcon: Icons.add,
                color: warningColor,
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QButton(
                label: "Info",
                sufixIcon: Icons.add,
                color: infoColor,
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QButton(
                label: "Disabled",
                sufixIcon: Icons.add,
                color: disabledColor,
                onPressed: () {},
              ),
              Divider(),
              QButton(
                label: "Primary",
                icon: Icons.add,
                spaceBetween: true,
                color: primaryColor,
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QButton(
                label: "Secondary",
                icon: Icons.add,
                spaceBetween: true,
                color: secondaryColor,
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QButton(
                label: "Success",
                icon: Icons.add,
                spaceBetween: true,
                color: successColor,
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QButton(
                label: "Danger",
                icon: Icons.add,
                spaceBetween: true,
                color: dangerColor,
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QButton(
                label: "Warning",
                icon: Icons.add,
                spaceBetween: true,
                color: warningColor,
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QButton(
                label: "Info",
                icon: Icons.add,
                spaceBetween: true,
                color: infoColor,
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QButton(
                label: "Disabled",
                icon: Icons.add,
                spaceBetween: true,
                color: disabledColor,
                onPressed: () {},
              ),
              Divider(),
              QButton(
                label: "Primary",
                sufixIcon: Icons.add,
                spaceBetween: true,
                color: primaryColor,
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QButton(
                label: "Secondary",
                sufixIcon: Icons.add,
                spaceBetween: true,
                color: secondaryColor,
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QButton(
                label: "Success",
                sufixIcon: Icons.add,
                spaceBetween: true,
                color: successColor,
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QButton(
                label: "Danger",
                sufixIcon: Icons.add,
                spaceBetween: true,
                color: dangerColor,
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QButton(
                label: "Warning",
                sufixIcon: Icons.add,
                spaceBetween: true,
                color: warningColor,
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QButton(
                label: "Info",
                sufixIcon: Icons.add,
                spaceBetween: true,
                color: infoColor,
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QButton(
                label: "Disabled",
                sufixIcon: Icons.add,
                spaceBetween: true,
                color: disabledColor,
                onPressed: () {},
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<UkButtonView> createState() => UkButtonController();
}
