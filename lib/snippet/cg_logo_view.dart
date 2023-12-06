import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CgLogoView extends StatefulWidget {
  CgLogoView({Key? key}) : super(key: key);

  Widget build(context, CgLogoController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("CgLogo"),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              SnippetContainer("logo_pos"),
              //#TEMPLATE logo_pos
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      transform: Matrix4.translationValues(0.0, 10, 0),
                      child: Icon(
                        MdiIcons.cashRegister,
                        size: 64.0,
                        color: Color(0xff263238),
                      ),
                    ),
                    Text(
                      "Pos",
                      style: GoogleFonts.blackOpsOne(
                        fontSize: 56.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff263238),
                      ),
                    ),
                    Container(
                      transform: Matrix4.translationValues(0.0, -10, 0),
                      child: Text(
                        "Restaurant",
                        style: GoogleFonts.blackOpsOne(
                          fontSize: 16.0,
                          color: Color(0xff263238),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //#END
              const SizedBox(
                height: 20.0,
              ),
              SnippetContainer("logo_pos2"),
              //#TEMPLATE logo_pos2
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Icon(
                        MdiIcons.cashRegister,
                        size: 64.0,
                        color: Color(0xff263238),
                      ),
                    ),
                    const SizedBox(
                      width: 4.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pos",
                          style: GoogleFonts.blackOpsOne(
                            fontSize: 48.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff263238),
                          ),
                        ),
                        Container(
                          transform: Matrix4.translationValues(0.0, -10, 0),
                          child: Text(
                            "Restaurant",
                            style: GoogleFonts.blackOpsOne(
                              fontSize: 16.0,
                              color: Color(0xff263238),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //#END
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<CgLogoView> createState() => CgLogoController();
}
