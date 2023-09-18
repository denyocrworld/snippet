import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/ecategory1_controller.dart';

class Ecategory1View extends StatefulWidget {
  Ecategory1View({Key? key}) : super(key: key);

  Widget build(context, Ecategory1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("Ecategory1"),
        actions: [],
      ),
      body: ListView.builder(
        itemCount: controller.categories.length,
        physics: ScrollPhysics(),
        padding: EdgeInsets.all(20.0),
        itemBuilder: (BuildContext context, int index) {
          var item = controller.categories[index];
          return Container(
            clipBehavior: Clip.antiAlias,
            margin: EdgeInsets.only(
              bottom: 12.0,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  item["icon"],
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(
                  8.0,
                ),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item["category_name"],
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      Text(
                        "${item["sales"]} Sales",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  State<Ecategory1View> createState() => Ecategory1Controller();
}
