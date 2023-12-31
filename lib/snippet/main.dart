import 'package:hyper_ui/core.dart';
import 'package:flutter/material.dart';

/*
cakeresume.com
kickstarter.com
canva 

Basic Pemrograman
  Variable
  Operator
  IF Statement
  List/Array
  Looping
  Function
  OOP
  Inhertiance
  Abstraction
  Encapsulation
  Polymorphism

Framework
  Flutter
  React
  Vue
  NextJS
*/
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Diointerceptors.init();
  runMainApp();
}

runMainApp() async {
  return runApp(const MainApp());
}

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
    return MaterialApp(
      title: 'Capek Ngoding',
      navigatorKey: Get.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: getDefaultTheme(),
      home: CgMainView(),
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
