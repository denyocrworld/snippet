import 'package:hyper_ui/core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DB.init();
  await DioHelper.init();
  runMainApp();
}

runMainApp() async {
  return runApp(const MainApp());
}

// wait 1 menit

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      // The app is returning to the foreground.
      // Add your navigation logic here to stay on the same screen.
      Navigator.of(context).pushReplacementNamed('/profile');
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget view = LoginView();

    if (AuthService.currentUser != null) {
      view = AuthService.currentUser!.role == "admin"
          ? AdminDashboardView()
          : CustomerDashboardView();
    }

    return MaterialApp(
      title: 'Capek Ngoding',
      navigatorKey: Get.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: getDefaultTheme(),
      // theme: getDarkTheme(),
      home: CgMainView(
        oldMenu: true,
      ),
      onGenerateRoute: (routeSettings) {
        print(routeSettings.name);
        return null;
      },
      builder: (context, child) {
        print(Get.currentContext.toString());
        return DebugView(
          context: context,
          child: child,
          visible: true,
        );
      },
    );
  }
}
