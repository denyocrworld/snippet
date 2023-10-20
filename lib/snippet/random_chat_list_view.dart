import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/random_chat_list_controller.dart';

class RandomChatListView extends StatefulWidget {
  RandomChatListView({Key? key}) : super(key: key);

  Widget build(context, RandomChatListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("RandomChatList"),
        actions: [],
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                physics: ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  // bool read = item["is_me"];

                  return Container(
                    margin: const EdgeInsets.only(
                      bottom: 12.0,
                    ),
                    child: Row(
                      mainAxisAlignment: index % 2 == 0
                          ? MainAxisAlignment.start
                          : MainAxisAlignment.end,
                      children: [
                        if (index % 2 == 0)
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                              "https://i.ibb.co/PGv8ZzG/me.jpg",
                            ),
                          ),
                        const SizedBox(
                          width: 12.0,
                        ),
                        Text(
                          "Message",
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                        const SizedBox(
                          width: 12.0,
                        ),
                        if (index % 2 != 0)
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                              "https://i.ibb.co/PGv8ZzG/me.jpg",
                            ),
                          ),
                      ],
                    ),
                  );

                  if (index % 2 == 0)
                    return Container(
                      margin: const EdgeInsets.only(
                        bottom: 12.0,
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                              "https://i.ibb.co/PGv8ZzG/me.jpg",
                            ),
                          ),
                          const SizedBox(
                            width: 12.0,
                          ),
                          Text(
                            "Message",
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                    );

                  if (index % 2 != 0)
                    return Container(
                      margin: const EdgeInsets.only(
                        bottom: 12.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Message",
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          const SizedBox(
                            width: 12.0,
                          ),
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                              "https://i.ibb.co/PGv8ZzG/me.jpg",
                            ),
                          ),
                        ],
                      ),
                    );
                  return null;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<RandomChatListView> createState() => RandomChatListController();
}
