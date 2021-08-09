import 'package:flutter/material.dart';
import 'package:moko/modules/homeNavigation/homeNavigation.dart';
import 'package:moko/modules/restaurant/restaurantHome.dart';
import 'package:moko/modules/homeNavigation/topSearch.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String route_name = "home_screen";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 3;

   final List<Widget> _widgetOptions = <Widget>[
    HomeNavigation(),//place of home icon
    RestaurantHome(), //place of search icon
    Text('Shop Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
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
          SizedBox( //contents of all navigation goes here
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
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Color.fromRGBO(131, 131, 131, 1),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Color.fromRGBO(131, 131, 131, 1),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shop_two,
                color: Color.fromRGBO(131, 131, 131, 1),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Color.fromRGBO(131, 131, 131, 1),
              ),
              label: ""),
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromRGBO(55, 55, 55, 1),
        iconSize: 40,
        onTap: _onItemTapped,
        elevation: 1,
      ),
    );
  }
}
