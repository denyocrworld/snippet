import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CgHyperuiListView extends StatefulWidget {
  CgHyperuiListView({Key? key}) : super(key: key);

  Widget build(context, CgHyperuiListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("CgHyperuiList"),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              //#TEMPLATE q_list_view
              QListView(
                shrinkWrap: true,
                futureBuilder: (page) async {
                  var response = await Dio().get(
                    "https://reqres.in/api/users",
                    options: Options(
                      headers: {
                        "Content-Type": "application/json",
                      },
                    ),
                  );
                  return response;
                },
                builder: (index, item) {
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        backgroundImage: NetworkImage(
                          item["avatar"],
                        ),
                      ),
                      title: Text("${item["first_name"]}"),
                      subtitle: Text("${item["email"]}"),
                    ),
                  );
                },
              ),
              //#END
              SnippetContainer("list_categories"),
              //#TEMPLATE list_categories
              Builder(builder: (context) {
                List categories = [
                  {
                    "label": "Food",
                    "image":
                        "https://images.unsplash.com/photo-1476224203421-9ac39bcb3327?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
                  },
                  {
                    "label": "Main Course",
                    "image":
                        "https://images.unsplash.com/photo-1593253787226-567eda4ad32d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
                  },
                  {
                    "label": "Drink",
                    "image":
                        "https://images.unsplash.com/photo-1527661591475-527312dd65f5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=415&q=80",
                  },
                  {
                    "label": "Snack",
                    "image":
                        "https://images.unsplash.com/photo-1580314552228-5a7ce023fc9e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=388&q=80",
                  },
                ];

                return ListView.builder(
                  itemCount: categories.length,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    var item = categories[index];
                    return Container(
                      height: 100.0,
                      clipBehavior: Clip.antiAlias,
                      margin: EdgeInsets.only(
                        bottom: 12.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            8.0,
                          ),
                        ),
                        image: DecorationImage(
                          image: NetworkImage(
                            item["image"],
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                          Center(
                            child: Text(
                              item["label"],
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              }),
              //#END
              SnippetContainer("grid_categories"),
              //#TEMPLATE grid_categories
              Builder(builder: (context) {
                List categories = [
                  {
                    "label": "Food",
                    "image":
                        "https://images.unsplash.com/photo-1476224203421-9ac39bcb3327?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
                  },
                  {
                    "label": "Main Course",
                    "image":
                        "https://images.unsplash.com/photo-1593253787226-567eda4ad32d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
                  },
                  {
                    "label": "Drink",
                    "image":
                        "https://images.unsplash.com/photo-1527661591475-527312dd65f5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=415&q=80",
                  },
                  {
                    "label": "Snack",
                    "image":
                        "https://images.unsplash.com/photo-1580314552228-5a7ce023fc9e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=388&q=80",
                  },
                ];

                return GridView.builder(
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1.0,
                    crossAxisCount: 2,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                  ),
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    var item = categories[index];
                    return Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            8.0,
                          ),
                        ),
                        image: DecorationImage(
                          image: NetworkImage(
                            item["image"],
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                          Center(
                            child: Text(
                              item["label"],
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              }),
              //#END
              SnippetContainer("list_products"),
              //#TEMPLATE list_products
              ListView.builder(
                itemCount: controller.products.length,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = controller.products[index];
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        backgroundImage: NetworkImage(
                          item["photo"],
                        ),
                      ),
                      title: Text(item["product_name"]),
                      subtitle: Text("${item["price"]}"),
                    ),
                  );
                },
              ),
              //#END
              SnippetContainer("grid_products"),
              //#TEMPLATE grid_products
              GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.0 / 1.4,
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                ),
                itemCount: controller.products.length,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = controller.products[index];
                  return Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
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
                                  6.0,
                                ),
                              ),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  right: 6.0,
                                  top: 8.0,
                                  child: CircleAvatar(
                                    radius: 14.0,
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                      size: 14.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          item["product_name"],
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          item["category"],
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                        SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          "${item["price"]}",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              //#END
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<CgHyperuiListView> createState() => CgHyperuiListController();
}
