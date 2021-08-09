import 'package:flutter/material.dart';
import 'package:moko/modules/homeNavigation/homeNavigation.dart';

class RestaurantMenu extends StatelessWidget {
  const RestaurantMenu({Key? key}) : super(key: key);

  static String route_name = "restaurant_menu_screen";

  @override
  Widget build(BuildContext context) {
    print("object");
    return HomeNavigation();
  }
}
