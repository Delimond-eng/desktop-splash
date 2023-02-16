import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void configSplash() async {
    await windowManager
        .setTitleBarStyle(TitleBarStyle.hidden); //Hiding the titlebar
    await windowManager.setTitle("I don't have a titlebar!");
    await windowManager.setSize(const Size(500, 250), animate: true);
    await windowManager.center(animate: true);
    await windowManager.show();
  }

  @override
  void initState() {
    super.initState();
    configSplash();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade800,
    );
  }
}
