import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hyper_ui/core.dart';

class ElearningCourseDetailView extends StatefulWidget {
  ElearningCourseDetailView({Key? key}) : super(key: key);

  Widget build(context, ElearningCourseDetailController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Details").animate().move().fadeIn(),
        elevation: 0.0,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.bookmark_outline,
              size: 24.0,
            ),
          )
              .animate()
              .moveX(
                begin: -100,
              )
              .fadeIn(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.sort,
              size: 24.0,
            ),
          )
              .animate()
              .moveX(
                begin: 100,
              )
              .fadeIn(),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 64.0,
                    width: 64.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://images.unsplash.com/photo-1522202176988-66273c2fd55f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1742&q=80",
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          8.0,
                        ),
                      ),
                    ),
                  )
                      .animate()
                      .moveX(
                        begin: 100,
                        duration: 300.ms,
                      )
                      .fadeIn(
                        duration: 1200.ms,
                      ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Complete UI/UX Design",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          itemSize: 16.0,
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                      ],
                    ),
                  )
                      .animate()
                      .moveX(
                        begin: 100,
                        duration: 300.ms,
                      )
                      .fadeIn(
                        duration: 1200.ms,
                      ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              H6(title: "About Course")
                  .animate()
                  .moveY(
                    begin: -100,
                    duration: 300.ms,
                  )
                  .fadeIn(
                    duration: 1200.ms,
                  ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.grey[700],
                ),
              )
                  .animate()
                  .moveX(
                    begin: 200,
                    duration: 500.ms,
                  )
                  .fadeIn(
                    duration: 1200.ms,
                  ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Container(
                    width: 48.0,
                    height: 48.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://images.unsplash.com/photo-1516534775068-ba3e7458af70?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1740&q=80",
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
                          "Jessica Doe",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          "UI/UX Designer in Draxcity",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "5 Courses",
                    style: TextStyle(
                      fontSize: 10.0,
                      color: Colors.grey[700],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.grey[700],
                    size: 12.0,
                  ),
                ],
              )
                  .animate()
                  .scale(
                    duration: 600.ms,
                  )
                  .fadeIn(
                    duration: 1200.ms,
                  ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Icon(
                    Icons.play_circle_outline,
                    size: 24.0,
                  )
                      .animate()
                      .moveX(
                        begin: 200,
                        duration: 600.ms,
                      )
                      .fadeIn(
                        duration: 1200.ms,
                      ),
                  SizedBox(
                    width: 6.0,
                  ),
                  Expanded(
                    child: Text(
                      "24 Lessons",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                        .animate()
                        .moveX(
                          begin: 200,
                          duration: 600.ms,
                        )
                        .fadeIn(
                          duration: 1200.ms,
                        ),
                  ),
                  Text(
                    "45%",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                      .animate()
                      .moveX(
                        begin: -100,
                        duration: 600.ms,
                      )
                      .fadeIn(
                        duration: 1200.ms,
                      ),
                ],
              ),
              SizedBox(
                height: 12.0,
              ),
              Container(
                height: 8.0,
                child: LinearProgressIndicator(
                  backgroundColor: disabledColor,
                  color: infoColor,
                  value: 0.45,
                ),
              )
                  .animate()
                  .move(
                    duration: 600.ms,
                  )
                  .fadeIn(
                    duration: 1200.ms,
                  ),
              SizedBox(
                height: 20.0,
              ),
              ListView.builder(
                itemCount: controller.lessons.length,
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                clipBehavior: Clip.none,
                itemBuilder: (context, index) {
                  var item = controller.lessons[index];
                  var playedAt = item["played_at"];
                  bool completed = false;

                  if (playedAt == item["time"]) {
                    playedAt = "Completed";
                    completed = true;
                  }

                  return Container(
                    padding: EdgeInsets.all(6.0),
                    margin: const EdgeInsets.only(
                      bottom: 12.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          8.0,
                        ),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[800]!.withOpacity(0.2),
                          blurRadius: 16,
                          offset: Offset(0, 6),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 64.0,
                          height: 64.0,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                8.0,
                              ),
                            ),
                          ),
                          child: Icon(
                            Icons.play_circle_fill,
                            size: 32.0,
                            color: infoColor,
                          ),
                        ),
                        const SizedBox(
                          width: 12.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${index + 1}. ${item["lesson_name"]}",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 6.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      "${item["time"]}",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.grey[700],
                                      ),
                                    ),
                                  ),
                                  if (!completed)
                                    Text(
                                      "$playedAt",
                                      style: TextStyle(
                                        fontSize: 10.0,
                                        color: dangerColor,
                                      ),
                                    ),
                                  if (completed)
                                    Text(
                                      "Completed",
                                      style: TextStyle(
                                        fontSize: 10.0,
                                        color: successColor,
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
                      .moveX(
                        begin: index % 2 == 0 ? -200 : 200,
                        duration: 600.ms,
                      )
                      .fadeIn(
                        duration: 1200.ms,
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
  State<ElearningCourseDetailView> createState() =>
      ElearningCourseDetailController();
}
