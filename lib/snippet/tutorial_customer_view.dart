import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class TutorialCustomerView extends StatefulWidget {
  TutorialCustomerView({Key? key}) : super(key: key);

  Widget build(context, TutorialCustomerController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("TutorialCustomer"),
        actions: [],
      ),
      body: SuperGridView(
        onLoading: (page) async {
          var list = await TutorialCustomerService().getCustomers(page: page);
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
              SizedBox(
                height: 4.0,
              ),
              Text(
                item["name"],
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  @override
  State<TutorialCustomerView> createState() => TutorialCustomerController();
}
