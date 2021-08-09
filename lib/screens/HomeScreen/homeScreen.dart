import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moko/modules/cart/cartPage.dart';
import 'package:moko/modules/homeNavigation/homeNavigation.dart';

import 'package:moko/modules/homeNavigation/topSearch.dart';
import 'package:moko/modules/restaurant/restaurantHome/restaurantHome.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String route_name = "home_screen";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 3;

  final List<Widget> _widgetOptions = <Widget>[
    HomeNavigation(), //place of home icon
    RestaurantHome(), //place of search icon
    CartPage(),
    Text('user Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              //contents of all navigation goes here
              height: MediaQuery.of(context).size.height * 0.90,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: _widgetOptions.elementAt(_selectedIndex),
                    ),
                  ],
                ),
              )),
        ],
      ),
      bottomNavigationBar: CustomNavigationBar(
        items: <CustomNavigationBarItem>[
          CustomNavigationBarItem(
            icon: Icon(Icons.home),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.search),
          ),
          CustomNavigationBarItem(
            icon: Icon(
              Icons.shop_two,
              color: Color.fromRGBO(131, 131, 131, 1),
            ),
          ),
          CustomNavigationBarItem(
              icon: Icon(
            Icons.person,
            color: Color.fromRGBO(131, 131, 131, 1),
          )),
        ],
        currentIndex: _selectedIndex,
        selectedColor: Color.fromRGBO(55, 55, 55, 1),
        iconSize: 40,
        onTap: _onItemTapped,
        elevation: 1,
      ),
    );

    // CupertinoTabScaffold(
    //     tabBar: CupertinoTabBar(
    //       items: const <BottomNavigationBarItem>[
    //         BottomNavigationBarItem(
    //             icon: Icon(
    //               Icons.home,
    //               color: Color.fromRGBO(131, 131, 131, 1),
    //             ),
    //             label: ""),
    //         BottomNavigationBarItem(
    //             icon: Icon(
    //               Icons.search,
    //               color: Color.fromRGBO(131, 131, 131, 1),
    //             ),
    //             label: ""),
    //         BottomNavigationBarItem(
    //             icon: Icon(
    //               Icons.shop_two,
    //               color: Color.fromRGBO(131, 131, 131, 1),
    //             ),
    //             label: ""),
    //         BottomNavigationBarItem(
    //             icon: Icon(
    //               Icons.person,
    //               color: Color.fromRGBO(131, 131, 131, 1),
    //             ),
    //             label: ""),
    //       ],
    //       currentIndex: _selectedIndex,
    //       iconSize: 40,
    //       onTap: _onItemTapped,
    //     ),
    //     tabBuilder: (BuildContext context, int index) {
    //       return CupertinoTabView(
    //         builder: (context) {
    //           return CupertinoPageScaffold(
    //             child: _widgetOptions.elementAt(index),
    //           );
    //         },
    //       );
    //     });
  }
}
