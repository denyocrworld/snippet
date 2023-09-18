import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class GameView extends StatefulWidget {
  GameView({Key? key}) : super(key: key);

  Widget build(context, GameController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Game",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: QButton(
              label: "Start",
              width: 100.0,
              color: successColor,
              onPressed: () => controller.startGame(),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: QButton(
              label: "Stop",
              width: 100.0,
              color: dangerColor,
              onPressed: () => controller.stopGame(),
            ),
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () => controller.jump(),
        child: Stack(
          children: [
            Container(
              width: 10000,
              height: MediaQuery.of(context).size.height,
              // transform:
              //     Matrix4.translationValues((controller.left * -1), 0.0, 0),
              decoration: BoxDecoration(
                color: Colors.orange[300],
              ),
              child: Container(
                width: 10000,
                child: Stack(
                  children: [
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 100),
                      left: controller.left + 40,
                      bottom: controller.bottom,
                      child: Container(
                        height: 50,
                        width: 30,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      height: 40.0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.brown,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 300,
                      bottom: 40,
                      child: Container(
                        height: 50,
                        width: 30,
                        decoration: const BoxDecoration(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 400,
                      bottom: 40,
                      child: Container(
                        height: 50,
                        width: 30,
                        decoration: const BoxDecoration(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 600,
                      bottom: 40,
                      child: Container(
                        height: 50,
                        width: 30,
                        decoration: const BoxDecoration(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<GameView> createState() => GameController();
}
