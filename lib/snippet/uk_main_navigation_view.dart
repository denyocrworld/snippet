import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class UkMainNavigationView extends StatefulWidget {
  const UkMainNavigationView({Key? key}) : super(key: key);

  Widget build(context, UkMainNavigationController controller) {
    controller.view = this;

    return QNavigation(
      mode: QNavigationMode.nav2,
      pages: [
        UkDashboardView(),
        UkNavigationView(),
        UkFormView(),
        UkButtonView(),
      ],
      menus: [
        NavigationMenu(
          icon: Icons.dashboard,
          label: "Dashboard",
        ),
        NavigationMenu(
          icon: MdiIcons.menuOpen,
          label: "Navigation",
        ),
        NavigationMenu(
          icon: Icons.input,
          label: "Form",
        ),
        NavigationMenu(
          icon: MdiIcons.buttonCursor,
          label: "Button",
        ),
      ],
    );
  }

  @override
  State<UkMainNavigationView> createState() => UkMainNavigationController();
}
