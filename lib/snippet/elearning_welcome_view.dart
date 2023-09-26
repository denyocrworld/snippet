import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hyper_ui/core.dart';

class ElearningWelcomeView extends StatefulWidget {
  ElearningWelcomeView({Key? key}) : super(key: key);

  Widget build(context, ElearningWelcomeController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: Color(0xffedeef2),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              Container(
                margin: const EdgeInsets.all(30.0),
                child: Image.network(
                  "https://img.freepik.com/free-vector/online-tutorials-concept_52683-37481.jpg?w=996&t=st=1695471372~exp=1695471972~hmac=72788a83141ff79086d2f24a7d6ebb72680fea5c592a0c9ec53e282d0614def3",
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fitWidth,
                ),
              )
                  .animate()
                  .moveY(
                    begin: -100,
                    duration: 400.ms,
                  )
                  .fadeIn(
                    duration: 2000.ms,
                  ),
              Text(
                "Get to know your skills and improve them.",
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              )
                  .animate()
                  .moveX(
                    begin: -100,
                    duration: 400.ms,
                  )
                  .fadeIn(
                    duration: 2000.ms,
                  ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Learn and explore new skills through professional opportunities",
                style: TextStyle(
                  fontSize: 16.0,
                ),
              )
                  .animate()
                  .moveX(
                    begin: 100,
                    duration: 400.ms,
                  )
                  .fadeIn(
                    duration: 2000.ms,
                  ),
              Spacer(),
              Builder(builder: (context) {
                List<Widget> animatedWidgets = [];
                List<Widget> widgets = [
                  InkWell(
                    onTap: () => Get.to(ElearningDashboardView()),
                    child: CircleAvatar(
                      radius: 24.0,
                      backgroundColor: infoColor,
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 24.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () => Get.to(ElearningDashboardView()),
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => Get.to(ElearningDashboardView()),
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: infoColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ];

                for (var index = 0; index < widgets.length; index++) {
                  var widget = widgets[index];
                  animatedWidgets.add(
                    widget
                        .animate()
                        .moveY(
                          begin: -100,
                          delay: ((200 * index) + 100).ms,
                          duration: 300.ms,
                        )
                        .fadeIn(
                          duration: (800 + (index * 100)).ms,
                        ),
                  );
                }

                return Row(
                  children: animatedWidgets,
                );
              }),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ElearningWelcomeView> createState() => ElearningWelcomeController();
}
