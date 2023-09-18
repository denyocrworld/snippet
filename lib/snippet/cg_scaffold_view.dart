import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CgScaffoldView extends StatefulWidget {
  const CgScaffoldView({Key? key}) : super(key: key);

  Widget build(context, CgScaffoldController controller) {
    controller.view = this;
    CgMainService cgMainService = CgMainService();

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgScaffold"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(6.0),
          child: Wrap(
            spacing: 20,
            runSpacing: 20,
            children: [
              SideMenu(
                menuList: cgMainService.scaffoldList,
                title: "Basic",
              ),
              DeviceView(
                snippet: "scaffold_bottom_navigation_bar",
                child: TemplateScaffoldBottomNavigationBar(),
              ),
              DeviceView(
                snippet: "scaffold_drawer",
                child: TemplateScaffoldDrawer(),
              ),
              DeviceView(
                snippet: "scaffold_image",
                child: TemplateScaffoldImage(),
              ),
              DeviceView(
                snippet: "scaffold_simple",
                child: TemplateScaffoldSimple(),
              ),
              DeviceView(
                snippet: "scaffold_sliver_appbar",
                child: TemplateScaffoldSliverAppbar(),
              ),
              DeviceView(
                snippet: "scaffold_tabbar_horizontal",
                child: TemplateScaffoldTabbarHorizontal(),
              ),
              DeviceView(
                snippet: "scaffold_menubar",
                child: TemplateScaffoldMenubar(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<CgScaffoldView> createState() => CgScaffoldController();
}
