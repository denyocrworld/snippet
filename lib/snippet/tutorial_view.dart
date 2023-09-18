import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class TutorialView extends StatefulWidget {
  TutorialView({
    Key? key,
  }) : super(key: key);

  Widget build(context, TutorialController controller) {
    controller.view = this;

    return Theme(
      data: ThemeData.light(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
          actions: [],
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    radius: 64.0,
                    backgroundImage: NetworkImage(
                      "https://i.ibb.co/PGv8ZzG/me.jpg",
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: CircleAvatar(
                      radius: 14.0,
                      backgroundColor: Colors.grey[300],
                      child: CircleAvatar(
                        radius: 12.0,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.circle,
                          color: Colors.green,
                          size: 22.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12.0,
              ),
              Text(
                "John Fritsch",
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Text(
                "@john_fristch4",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey[800],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.call,
                      color: Colors.orange,
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.video_call,
                      color: Colors.orange,
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.more_horiz,
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              const ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://i.ibb.co/PGv8ZzG/me.jpg",
                  ),
                ),
                title: Text(
                  "John doe",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text("john.doe@gmail.com"),
                trailing: CircleAvatar(
                  radius: 12.0,
                  backgroundColor: Colors.orange,
                  child: Icon(
                    Icons.chevron_right,
                    size: 18.0,
                    color: Colors.white,
                  ),
                ),
              ),
              const ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
                title: Text("John doe"),
                subtitle: Text("john.doe@gmail.com"),
                trailing: Icon(
                  Icons.add,
                  size: 24.0,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                'Hello',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                height: 52,
                width: MediaQuery.of(context).size.width * 0.6,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: const StadiumBorder(),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Upgrade",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TutorialView> createState() => TutorialController();
}
