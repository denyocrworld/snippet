import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class TdDashboardView extends StatefulWidget {
  TdDashboardView({Key? key}) : super(key: key);

  Widget build(context, TdDashboardController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Container(),
        leadingWidth: 0.0,
        elevation: 0.0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi Angel",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "10 task pending",
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.orange,
              ),
            ),
          ],
        ),
        actions: [
          CircleAvatar(
            radius: 20.0,
            backgroundImage: NetworkImage(
              "https://i.ibb.co/PGv8ZzG/me.jpg",
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 8.0,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(
                            color: Colors.grey[300]!,
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.blueGrey[400],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  CircleAvatar(
                    backgroundColor: Color(0xffff7461),
                    child: Icon(
                      Icons.tune,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              H6(
                title: "Categories",
                subtitle: "See all",
              ),
              SizedBox(
                height: 12.0,
              ),
              GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.0,
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                ),
                itemCount: controller.todoList.length,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = controller.todoList[index];
                  return Container(
                    height: 160.0,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          8.0,
                        ),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Mobile App",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                "10 Task",
                                style: TextStyle(
                                  fontSize: 12.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: Image.network(
                            item["photo"],
                            width: 72.0,
                            height: 72.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              H6(
                title: "Ongoing Task",
                subtitle: "See all",
              ),
              SizedBox(
                height: 12.0,
              ),
              ListView.builder(
                itemCount: controller.ongoingTodolist.length,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = controller.ongoingTodolist[index];
                  return Container(
                    padding: EdgeInsets.all(12.0),
                    margin: const EdgeInsets.only(
                      bottom: 12.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          8.0,
                        ),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                item["todo_name"],
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 12.0,
                            ),
                            Card(
                              shape: StadiumBorder(),
                              color: Colors.red[400],
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 12.0,
                                  vertical: 4.0,
                                ),
                                child: Text(
                                  "3D",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Team members",
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: SingleChildScrollView(
                                controller: ScrollController(),
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: List.generate(item["images"].length,
                                      (index) {
                                    var image = item["images"][index];
                                    return Container(
                                      margin: EdgeInsets.only(
                                        right: 6.0,
                                      ),
                                      child: CircleAvatar(
                                        radius: 16.0,
                                        backgroundImage: NetworkImage(
                                          image,
                                        ),
                                      ),
                                    );
                                  }),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 12.0,
                            ),
                            Container(
                              width: 48.0,
                              height: 48.0,
                              child: FittedBox(
                                child: Stack(
                                  children: [
                                    CircularProgressIndicator(
                                      value: item["progress"] / 100,
                                      color: Colors.orange,
                                    ),
                                    Positioned(
                                      left: 8,
                                      top: 8,
                                      child: Text(
                                        "${item["progress"]}",
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.orange,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.timer,
                              size: 24.0,
                              color: Colors.red[400],
                            ),
                            const SizedBox(
                              width: 4.0,
                            ),
                            Text(
                              "2:30 PM - 6:00 PM",
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.blueGrey[800],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TdDashboardView> createState() => TdDashboardController();
}
