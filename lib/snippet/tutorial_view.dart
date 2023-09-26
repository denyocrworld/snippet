import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class TutorialView extends StatefulWidget {
  TutorialView({
    Key? key,
  }) : super(key: key);

  Widget build(context, TutorialController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("Paging Example"),
        actions: [
          IconButton(
            onPressed: () => controller.generateDummies(),
            icon: const Icon(
              Icons.data_array,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: SuperListView(
        // mode: Mode.gridView,
        // mode: Mode.listView,
        onLoading: (page) async {
          var list = await TutorialProductService().getProducts(page: page);
          return list;
        },
        itemBuilder: (context, index, item) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  height: 160.0,
                  width: MediaQuery.of(context).size.width,
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
              ),
              const SizedBox(
                height: 4.0,
              ),
              Text(
                item["product_name"],
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Text(
                "${item["price"]}",
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  @override
  State<TutorialView> createState() => TutorialController();
}
