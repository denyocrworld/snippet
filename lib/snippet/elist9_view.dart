import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/elist9_controller.dart';

class Elist9View extends StatefulWidget {
  Elist9View({Key? key}) : super(key: key);

  Widget build(context, Elist9Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("Elist9"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.sort,
              size: 24.0,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.tune,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(20.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1.0,
          crossAxisCount: 1,
          mainAxisSpacing: 12,
          crossAxisSpacing: 6,
        ),
        itemCount: controller.products.length,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          var item = controller.products[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  height: 160.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        item["photo"],
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
                        right: 8,
                        top: 8,
                        child: CircleAvatar(
                          radius: 20.0,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 20.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      item["product_name"],
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    "\$${item["price"]}",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 4.0,
              ),
              Text(
                "${item["category"]}",
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  @override
  State<Elist9View> createState() => Elist9Controller();
}
