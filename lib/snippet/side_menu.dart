// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:hyper_ui/core.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  final String? title;
  final List<Map> menuList;
  SideMenu({
    Key? key,
    required this.menuList,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null) ...[
            Text(
              title!,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 6.0,
            ),
          ],
          ListView.builder(
            itemCount: menuList.length,
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              var item = menuList[index];
              return Card(
                child: ListTile(
                  onTap: () => Get.to(item["page"]),
                  title: Text(item["label"]),
                  subtitle: Text("Programmer"),
                ),
              );
            },
          ),
          if (false)
            Wrap(
              children: List.generate(
                menuList.length,
                (index) {
                  var item = menuList[index];
                  bool disabled = item["tag"] == "Coming Soon";
                  bool isOnlyMember = item["tag"] == "Member Only";

                  var size = (constraints.biggest.width - 40) / 3;

                  return InkWell(
                    onTap: () {
                      if (item["action"] != null) {
                        item["action"]();
                        return;
                      }
                      print("updateView to ${item["page"]}");
                      Get.to(item["page"]);
                    },
                    child: AbsorbPointer(
                      child: Stack(
                        children: [
                          Container(
                            width: size,
                            height: size,
                            margin: EdgeInsets.all(4.0),
                            padding: EdgeInsets.all(8.0),
                            child: Container(
                              padding: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                color: Theme.of(context).cardColor,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12.0),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x19000000),
                                    blurRadius: 12,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(item["icon"]),
                                    color:
                                        disabled ? Colors.grey : item["color"],
                                    iconSize: 24.0,
                                    onPressed: () {},
                                  ),
                                  FittedBox(
                                    child: Text(
                                      '${item["label"]}',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 10.0,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          if (item["tag"] != null)
                            Positioned(
                              right: 0,
                              top: 0,
                              child: Card(
                                color:
                                    isOnlyMember ? Colors.red : Colors.orange,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 8.0,
                                    vertical: 4.0,
                                  ),
                                  child: Text(
                                    item["tag"],
                                    style: TextStyle(
                                      fontSize: 6.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
        ],
      );
    });
  }
}
