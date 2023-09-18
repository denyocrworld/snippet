import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/ecategory3_controller.dart';

class Ecategory3View extends StatefulWidget {
  Ecategory3View({Key? key}) : super(key: key);

  Widget build(context, Ecategory3Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("Ecategory3"),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Foods",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.0 / 1.2,
                  crossAxisCount: 3,
                  mainAxisSpacing: 6,
                  crossAxisSpacing: 6,
                ),
                itemCount: controller.categories.length,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = controller.categories[index];
                  return LayoutBuilder(builder: (context, constraint) {
                    return Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: constraint.maxWidth / 2.6,
                            backgroundImage: NetworkImage(
                              item["icon"],
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            item["category_name"],
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    );
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<Ecategory3View> createState() => Ecategory3Controller();
}
