import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class ZappMainNavigationView extends StatefulWidget {
  ZappMainNavigationView({Key? key}) : super(key: key);

  Widget build(context, ZappMainNavigationController controller) {
    controller.view = this;

    /*
   TODO: Implement this @ controller
   int selectedIndex = 0;
   updateIndex(int newIndex) {
   selectedIndex = newIndex;
   setState(() {});
   }
   */
    return DefaultTabController(
      length: 4,
      initialIndex: controller.selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: controller.selectedIndex,
          children: [
            ZappDashboardView(),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.purple,
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.selectedIndex,
          onTap: (newIndex) => controller.updateIndex(newIndex),
          selectedItemColor: Color(0xfffdcc01),
          unselectedItemColor: Colors.grey[700],
          selectedLabelStyle: TextStyle(
            fontSize: 0.0,
          ),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                MdiIcons.homeCircleOutline,
              ),
              label: "Dashboard",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                MdiIcons.listBoxOutline,
              ),
              label: "Order",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                MdiIcons.bellOutline,
              ),
              label: "Favorite",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_pin_circle_outlined,
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<ZappMainNavigationView> createState() => ZappMainNavigationController();
}
