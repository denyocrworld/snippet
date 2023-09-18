import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/elist3_controller.dart';

class Elist3View extends StatefulWidget {
  Elist3View({Key? key}) : super(key: key);

  Widget build(context, Elist3Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("Elist3"),
        actions: [],
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Polo Shirts",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              "617 items",
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 42,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey[900],
                      ),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Expanded(
                            child: Text("Sort By"),
                          ),
                          Icon(
                            Icons.sort,
                            size: 24.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Expanded(
                  child: SizedBox(
                    height: 42,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey[900],
                      ),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Expanded(
                            child: Text("Filter"),
                          ),
                          Icon(
                            Icons.tune,
                            size: 24.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8.0,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: controller.products.length,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  var item = controller.products[index];
                  return Card(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 72.0,
                            width: 72.0,
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
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item["product_name"],
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4.0,
                                ),
                                Text(
                                  item["category"],
                                  style: TextStyle(
                                    fontSize: 12.0,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4.0,
                                ),
                                Row(
                                  children: [
                                    if (item["flash_sale"] == true)
                                      Text(
                                        "\$${item["discount_price"]}",
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    if (item["flash_sale"] != true)
                                      Text(
                                        "\$${item["price"]}",
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    SizedBox(
                                      width: 4.0,
                                    ),
                                    if (item["flash_sale"] == true)
                                      Text(
                                        "\$${item["price"]}",
                                        style: TextStyle(
                                          fontSize: 12.0,
                                        ),
                                      ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          CircleAvatar(
                            radius: 16.0,
                            backgroundColor: Colors.blueGrey[900],
                            child: Icon(
                              Icons.more_horiz,
                              color: Colors.white,
                              size: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<Elist3View> createState() => Elist3Controller();
}
