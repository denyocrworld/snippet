import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CgMainView extends StatefulWidget {
  final bool oldMenu;
  CgMainView({
    Key? key,
    this.oldMenu = false,
  }) : super(key: key);

  Widget build(context, CgMainController controller) {
    controller.view = this;
    CgMainService cgMainService = CgMainService();

    if (!oldMenu)
      return Scaffold(
        body: Row(
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: 200),
              width: controller.expanded ? 280 : 0,
              child: Stack(
                children: [
                  AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    width: 280,
                    transform: Matrix4.translationValues(
                        controller.expanded ? 0 : -280, 0, 0),
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.symmetric(
                              horizontal: 20.0,
                              vertical: 12.0,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xff303c54),
                            ),
                            child: FittedBox(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    MdiIcons.codeJson,
                                    size: 32.0,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Text(
                                    "Hyper UI",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xff3c4b64),
                                ),
                                child: SingleChildScrollView(
                                  controller: ScrollController(),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CgMainMenuItem(
                                        icon: MdiIcons.viewDashboard,
                                        label: "Dashboard",
                                        tag: "1.0",
                                        onTap: () => controller.updateView(
                                          CgDashboardView(),
                                        ),
                                      ),
                                      CgMainMenuItem(
                                        icon: MdiIcons.table,
                                        label: "CRUD",
                                        onTap: () => controller.updateView(
                                          CrudListView(),
                                        ),
                                      ),
                                      CgMainMenuItem(
                                        icon: MdiIcons.apps,
                                        label: "Module Manager",
                                        onTap: () => controller.updateView(
                                          CrudModuleManagerListView(),
                                        ),
                                      ),
                                      CgMainMenuCategory(
                                        label: "THEME",
                                      ),
                                      CgMainMenuItem(
                                        icon: MdiIcons.palette,
                                        label: "Colors",
                                        onTap: () {},
                                      ),
                                      CgMainMenuItem(
                                        icon: MdiIcons.formatFont,
                                        label: "Typography",
                                        onTap: () {},
                                      ),
                                      CgMainMenuCategory(
                                        label: "COMPONENTS",
                                      ),
                                      CgMainMenuItem(
                                        icon: MdiIcons.puzzleStar,
                                        label: "Base",
                                        onTap: () {},
                                        children: [
                                          CgMainMenuItem(
                                            label: "Accordion",
                                            onTap: () {},
                                          ),
                                          CgMainMenuItem(
                                            label: "Breadcrumb",
                                            onTap: () {},
                                          ),
                                          CgMainMenuItem(
                                            label: "Cards",
                                            onTap: () {},
                                          ),
                                          CgMainMenuItem(
                                            label: "Carousel",
                                            onTap: () {},
                                          ),
                                        ],
                                      ),
                                      CgMainMenuItem(
                                        icon: MdiIcons.buttonPointer,
                                        label: "Buttons",
                                        onTap: () {},
                                      ),
                                      CgMainMenuItem(
                                        icon: MdiIcons.formTextbox,
                                        label: "Forms",
                                        onTap: () {},
                                      ),
                                      CgMainMenuItem(
                                        icon: MdiIcons.chartBar,
                                        label: "Charts",
                                        onTap: () {},
                                      ),
                                      CgMainMenuItem(
                                        icon: MdiIcons.imageMarker,
                                        label: "Icons",
                                        onTap: () {},
                                      ),
                                      CgMainMenuItem(
                                        icon: MdiIcons.bell,
                                        label: "Notifications",
                                        onTap: () {},
                                      ),
                                      CgMainMenuItem(
                                        icon: MdiIcons.widgets,
                                        label: "Widgets",
                                        onTap: () {},
                                      ),
                                      CgMainMenuCategory(
                                        label: "EXTRAS",
                                      ),
                                      CgMainMenuItem(
                                        icon: MdiIcons.pageLayoutBody,
                                        label: "Pages",
                                        onTap: () {},
                                      ),
                                      CgMainMenuItem(
                                        icon: MdiIcons.fileDocument,
                                        label: "Docs",
                                        onTap: () {},
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 60,
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () => controller.updateSidebarState(),
                          icon: Icon(
                            Icons.menu,
                            color: Colors.grey[700],
                            size: 20.0,
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          "Dashboard",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey[800],
                          ),
                        ),
                        const SizedBox(
                          width: 16.0,
                        ),
                        Text(
                          "Users",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey[500],
                          ),
                        ),
                        const SizedBox(
                          width: 16.0,
                        ),
                        Text(
                          "Settings",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey[500],
                          ),
                        ),
                        const SizedBox(
                          width: 16.0,
                        ),
                        Spacer(),
                        Badge(
                          label: Text(
                            "4",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          child: Icon(
                            Icons.notifications_outlined,
                            color: Colors.grey[500],
                            size: 20.0,
                          ),
                        ),
                        SizedBox(
                          width: 16.0,
                        ),
                        Badge(
                          backgroundColor: Colors.transparent,
                          // label: Text(
                          //   "4",
                          //   style: TextStyle(
                          //     color: Colors.white,
                          //   ),
                          // ),
                          child: Icon(
                            Icons.list,
                            color: Colors.grey[500],
                            size: 20.0,
                          ),
                        ),
                        SizedBox(
                          width: 16.0,
                        ),
                        Badge(
                          label: Text(
                            "3",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          child: Icon(
                            Icons.inbox_outlined,
                            color: Colors.grey[500],
                            size: 20.0,
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                            "https://i.ibb.co/PGv8ZzG/me.jpg",
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: controller.mainView,
                  )
                ],
              ),
            ),
          ],
        ),
      );

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("MagicBook"),
          ],
        ),
      ),
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        controller: controller.scrollController,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () => Get.to(TutorialView()),
                    child: const Icon(
                      Icons.circle,
                      size: 14.0,
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(
                    width: 6.0,
                  ),
                  InkWell(
                    onTap: () => Get.to(CrudModuleManagerListView()),
                    child: const Icon(
                      Icons.circle,
                      size: 14.0,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
              SideMenu(
                menuList: cgMainService.menuList,
                title: "Basic",
              ),
              SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              SideMenu(
                menuList: cgMainService.hyperUiMenuList,
                title: "Hyper UI",
              ),
              SideMenu(
                menuList: cgMainService.slicingUiMenuList,
                title: "Slicing UI",
              ),
              const SizedBox(
                height: 20.0,
              ),
              SideMenu(
                menuList: cgMainService.slicingUiRandomMenuList,
                title: "Slicing UI Random",
              ),
              const SizedBox(
                height: 20.0,
              ),
              SideMenu(
                menuList: cgMainService.suiELearningList,
                title: "Slicing UI ELearning",
              ),
              const SizedBox(
                height: 20.0,
              ),
              SideMenu(
                menuList: cgMainService.suiRandomList,
                title: "Slicing UI",
              ),
              SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "© CapekNgoding.com",
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  State<CgMainView> createState() => CgMainController();
}
