import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hyper_ui/core.dart';

class ZappDashboardView extends StatefulWidget {
  ZappDashboardView({Key? key}) : super(key: key);

  Widget build(context, ZappDashboardController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        leading: Container(),
        leadingWidth: 0.0,
        title: Image.network(
          "https://i.ibb.co/NnRGnMn/zapp-logo.png",
          width: 90.0,
          fit: BoxFit.fill,
        ).animate().fadeIn(),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                "DISCOVER YOUR SERVICES",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff3e4758),
                ),
              ).animate().moveX(begin: -100).fadeIn(
                    duration: 1000.ms,
                  ),
              SizedBox(
                height: 12.0,
              ),
              Text(
                "Select a service you want and we'll Zapp our\nservice heroes as soon as possible.",
                style: TextStyle(
                  fontSize: 12.0,
                  color: Color(0xff3e4758),
                ),
              ).animate().moveX(begin: 200).fadeIn(
                    duration: 1000.ms,
                  ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xfffff5cc),
                        radius: 48.0,
                        child: Image.network(
                          "https://cdn-icons-png.flaticon.com/128/2203/2203124.png",
                          width: 64,
                        ),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Text(
                        "On Demand",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Color(0xff3e4758),
                        ),
                      ),
                    ],
                  ).animate().moveX(begin: -200).fadeIn(
                        duration: 1000.ms,
                      ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xfffff5cc),
                        radius: 48.0,
                        child: Image.network(
                          "https://cdn-icons-png.flaticon.com/128/470/470717.png",
                          width: 48,
                        ),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Text(
                        "On Demand",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Color(0xff3e4758),
                        ),
                      ),
                    ],
                  ).animate().moveX(begin: 200).fadeIn(
                        duration: 1000.ms,
                      ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Builder(builder: (context) {
                      List images = [
                        "https://i.ibb.co/QbfCm4P/zapp-slider.png",
                        "https://images.unsplash.com/photo-1548695607-9c73430ba065?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1325&q=80",
                        "https://images.unsplash.com/photo-1580674285054-bed31e145f59?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
                        "https://images.unsplash.com/photo-1584799580661-53b7c6b99430?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1180&q=80",
                        "https://images.unsplash.com/photo-1607227063002-677dc5fdf96f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80",
                      ];

                      return Column(
                        children: [
                          CarouselSlider(
                            carouselController: controller.carouselController,
                            options: CarouselOptions(
                              height: 160.0,
                              autoPlay: true,
                              enlargeCenterPage: false,
                              viewportFraction: 1.0,
                              onPageChanged: (index, reason) {
                                controller.currentIndex = index;
                                controller.setState(() {});
                              },
                            ),
                            items: images.map((imageUrl) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.amber,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(6.0),
                                      ),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          imageUrl,
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  );
                                },
                              );
                            }).toList(),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: images.asMap().entries.map((entry) {
                              bool isSelected =
                                  controller.currentIndex == entry.key;
                              return GestureDetector(
                                onTap: () => controller.carouselController
                                    .animateToPage(entry.key),
                                child: Container(
                                  width: isSelected ? 40 : 6.0,
                                  height: 6.0,
                                  margin: EdgeInsets.only(
                                    right: 6.0,
                                    top: 12.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: isSelected
                                        ? Color(0xffffcd00)
                                        : Color(0xffcacbcb),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12.0),
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            "PARTNERS",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      );
                    }).animate().scale().fadeIn(
                          duration: 1000.ms,
                        ),
                    SizedBox(
                      height: 8.0,
                    ),
                    GridView.builder(
                      padding: EdgeInsets.zero,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 1.0 / 1.2,
                        crossAxisCount: 3,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      ),
                      itemCount: controller.partners.length,
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        var item = controller.partners[index];
                        return Container(
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 160.0,
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
                                height: 6.0,
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
                              begin: -50,
                              delay: ((300 * index) + 300).ms,
                            )
                            .fadeIn(
                              duration: 1000.ms,
                            );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ZappDashboardView> createState() => ZappDashboardController();
}
