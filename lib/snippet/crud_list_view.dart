import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/module/template/crud_service/crud_service.dart';

class CrudListView extends StatefulWidget {
  CrudListView({Key? key}) : super(key: key);

  Widget build(context, CrudListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("CrudList"),
        actions: [
          if (kDebugMode)
            IconButton(
              onPressed: () async {
                showLoading();
                await CrudService().generateData();
                await controller.reload();
                hideLoading();
              },
              icon: Icon(
                Icons.bug_report,
                size: 24.0,
              ),
            ),
          IconButton(
            onPressed: () async {
              CgMainController.instance.updateView(CrudFormView());
            },
            icon: Icon(
              Icons.add,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 4.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(
                      color: Colors.grey[300]!,
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.blueGrey[900],
                  ),
                  suffixIcon: Container(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.sort,
                      color: Colors.blueGrey[900],
                    ),
                  ),
                ),
                onSubmitted: (text) => controller.search(text),
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Expanded(
              child: QListView(
                id: "crud_list",
                futureBuilder: (page) async {
                  return await controller.getItems(
                    page: page,
                  );
                },
                onDismiss: (item) async {
                  await controller.deleteItem(item["id"]);
                },
                builder: (index, item) {
                  return Card(
                    child: ListTile(
                      onTap: () async {
                        CgMainController.instance.updateView(
                          CrudFormView(
                            item: item,
                          ),
                        );
                      },
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        backgroundImage: NetworkImage(
                          item["photo"] ??
                              "https://i.ibb.co/S32HNjD/no-image.jpg",
                        ),
                      ),
                      title: Text("${item["product_name"]}"),
                      subtitle: Text("${item["price"]}"),
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
  State<CrudListView> createState() => CrudListController();
}
