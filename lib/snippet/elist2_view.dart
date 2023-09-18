import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/elist2_controller.dart';

class Elist2View extends StatefulWidget {
  Elist2View({Key? key}) : super(key: key);

  Widget build(context, Elist2Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              "Jackets",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "89 Items",
              style: TextStyle(
                fontSize: 12.0,
              ),
            ),
          ],
        ),
        centerTitle: true,
        actions: [],
      ),
      body: ListView.builder(
        itemCount: controller.products.length,
        padding: EdgeInsets.all(20.0),
        physics: ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          var item = controller.products[index];
          return Container(
            height: 240.0,
            margin: EdgeInsets.only(
              bottom: 12.0,
            ),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  item["photo"],
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(
                  16.0,
                ),
              ),
            ),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    // color: Colors.black.withOpacity(0.4),
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black54,
                        Colors.black45,
                        Colors.black38,
                        Colors.black26,
                        Colors.black12,
                      ],
                    ),
                  ),
                ),
                if (item["flash_sale"] == true)
                  Positioned(
                    left: 8,
                    top: 8,
                    child: Card(
                      color: Colors.red[600],
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.0,
                          vertical: 4.0,
                        ),
                        child: Text(
                          "SALE",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                Positioned(
                  right: 8,
                  top: 8,
                  child: CircleAvatar(
                    radius: 16.0,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.more_horiz,
                      color: Colors.blueGrey[900],
                      size: 16.0,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        item["product_name"],
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        item["category"],
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "\$${item["price"]}",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            "\$${item["price"]}",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                            ),
                          )
                        ],
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
  State<Elist2View> createState() => Elist2Controller();
}
