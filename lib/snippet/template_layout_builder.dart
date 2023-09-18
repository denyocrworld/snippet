import 'package:flutter/material.dart';

class TemplateLayoutBuilder extends StatelessWidget {
  const TemplateLayoutBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //#GROUP_TEMPLATE layout

    //#TEMPLATE layout_builder
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        bool isTablet = MediaQuery.of(context).size.width < 1100 &&
            MediaQuery.of(context).size.width >= 850;
        bool isDesktop = MediaQuery.of(context).size.width >= 1100;
        bool isMobile = MediaQuery.of(context).size.width < 850;

        if (isDesktop) {
          return Scaffold(
            body: Container(
              color: Colors.red,
              child: Center(
                child: Text(
                  "Desktop Mode",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        }

        if (isTablet) {
          return Scaffold(
            body: Container(
              color: Colors.green,
              child: Center(
                child: Text(
                  "Tablet Mode",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        }

        //mobile
        return Scaffold(
          body: Container(
            color: Colors.purple,
            child: Center(
              child: Text(
                "Mobile Mode",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        );
      },
    );
    //#END
  }
}
