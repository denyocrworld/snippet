import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class TiktokChatView extends StatefulWidget {
  const TiktokChatView({Key? key}) : super(key: key);

  Widget build(context, TiktokChatController controller) {
    controller.view = this;

    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        body: Row(
          children: [
            Container(
              width: 300.0,
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      controller: controller.scrollController,
                      itemCount: controller.chats.length,
                      reverse: true,
                      physics: ScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        var item = controller.chats[index];
                        var name = index < controller.users.length
                            ? controller.users[index]
                            : "-";

                        if (index >= controller.users.length)
                          return Container();

                        var reply = controller.getAutoReply(item);
                        return ListTile(
                          title: Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.blueGrey,
                                radius: 10.0,
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Card(
                                color: Colors.black,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 6.0,
                                  ),
                                  child: Text(
                                    name ?? "-",
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 6.0,
                              ),
                              Text(
                                "0 Points",
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 14.0,
                                ),
                              ),
                            ],
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Q: ${item}",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.0,
                                ),
                              ),
                              if (reply.isNotEmpty)
                                Text(
                                  "A: ${reply}",
                                  style: const TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.yellow,
                                  ),
                                ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 46,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      onPressed: () => controller.scrollToBottom(),
                      child: const Text("Jump to Bottom"),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: 6,
              decoration: const BoxDecoration(
                color: Colors.red,
              ),
            ),
            Expanded(
              child: TutorialView(),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<TiktokChatView> createState() => TiktokChatController();
}
