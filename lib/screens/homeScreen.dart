import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String route_name = "home_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("home"),),
    );
  }
}
