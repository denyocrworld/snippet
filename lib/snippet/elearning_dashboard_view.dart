import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hyper_ui/core.dart';

class ElearningDashboardView extends StatefulWidget {
  ElearningDashboardView({Key? key}) : super(key: key);

  Widget build(context, ElearningDashboardController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        leading: Container(),
        leadingWidth: 0.0,
        title: Row(
          children: [
            Text(
              "Good morning, ",
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
            SizedBox(
              width: 4.0,
            ),
            Text(
              "Alex!",
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ).animate().fadeIn(
              duration: 2000.ms,
            ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 28.0,
            ),
          )
              .animate()
              .fadeIn(
                duration: 2000.ms,
              )
              .shake(),
          Center(
            child: Badge(
              label: Text(
                "4",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              child: Icon(
                Icons.notifications_outlined,
                size: 28.0,
              ),
            ),
          )
              .animate()
              .fadeIn(
                duration: 2000.ms,
              )
              .shake(),
          SizedBox(
            width: 8.0,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              H6(
                title: "Best choice",
                subtitle: "See all",
              ).animate().move().fadeIn(
                    duration: 2000.ms,
                  ),
              SizedBox(
                height: 12.0,
              ),
              //ALT+SHIFT+H
              //ALT+SHIFT+J
              SingleChildScrollView(
                controller: ScrollController(),
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.none,
                child: Row(
                  children: List.generate(controller.courses.length, (index) {
                    var item = controller.courses[index];
                    return Container(
                      height: 200.0,
                      width: 160.0,
                      margin: EdgeInsets.only(
                        right: 20.0,
                      ),
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            item["cover"],
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            8.0,
                          ),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  Colors.black54,
                                  Colors.black45,
                                  Colors.black12,
                                  Colors.transparent,
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  item["course_name"],
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.timer,
                                      size: 16.0,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 4.0,
                                    ),
                                    Expanded(
                                      child: Text(
                                        "${item["lesson_count"]} Lessons",
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "\$${item["price"]}",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                        .animate()
                        .moveY(
                          delay: ((300 * index) + 100).ms,
                        )
                        .fadeIn(
                          duration: 2000.ms,
                        );
                  }),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              H6(
                title: "Category",
                subtitle: "See all",
              ).animate().moveY().fadeIn(
                    duration: 2000.ms,
                  ),
              SizedBox(
                height: 8.0,
              ),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: List.generate(
                  controller.categories.length,
                  (index) {
                    var item = controller.categories[index];
                    return Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.0,
                        vertical: 6.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            8.0,
                          ),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 24,
                            offset: Offset(0, 11),
                          ),
                        ],
                      ),
                      child: Wrap(
                        children: [
                          Icon(
                            item["icon"],
                            color: item["color"],
                            size: 12.0,
                          ),
                          SizedBox(
                            width: 6.0,
                          ),
                          Text(
                            "${item["label"]}",
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                    )
                        .animate()
                        .moveY(
                          delay: ((200 * index) + 200).ms,
                        )
                        .fadeIn(
                          delay: 300.ms,
                        );
                  },
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              H6(
                title: "My courses",
                subtitle: "See all",
              ).animate().fadeIn(
                    delay: 2000.ms,
                  ),
              SizedBox(
                height: 12.0,
              ),
              SingleChildScrollView(
                controller: ScrollController(),
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.none,
                child: Row(
                  children: List.generate(controller.myCourses.length, (index) {
                    var item = controller.myCourses[index];
                    return Container(
                      padding: EdgeInsets.all(12.0),
                      margin: EdgeInsets.only(
                        right: 12.0,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xffe5f1f1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                      ),
                      width: 200.0,
                      child: Row(
                        children: [
                          Container(
                            width: 64.0,
                            height: 64.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  item["cover"],
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
                                  item["course_name"],
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                LinearProgressIndicator(
                                  value: 0.4,
                                  color: infoColor,
                                  backgroundColor: disabledColor,
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      MdiIcons.playCircleOutline,
                                      size: 16.0,
                                    ),
                                    SizedBox(
                                      width: 4.0,
                                    ),
                                    Expanded(
                                      child: Text(
                                        "${item["lesson_count"]} lessons",
                                        style: TextStyle(
                                          fontSize: 12.0,
                                        ),
                                      ),
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                      size: 16.0,
                                    ),
                                    SizedBox(
                                      width: 4.0,
                                    ),
                                    Text(
                                      "${item["rating"]}",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 4.0,
                                ),
                                Row(
                                  children: [
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
                                    Text(
                                      "\$${item["price"]}",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                        .animate()
                        .scale(
                          duration: 1000.ms,
                        )
                        .fadeIn(
                          duration: 2000.ms,
                        );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ElearningDashboardView> createState() => ElearningDashboardController();
}
