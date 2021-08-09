import 'package:flutter/material.dart';
import 'package:moko/components/foodImageBox.dart';
import 'package:moko/components/title2.dart';
import 'package:moko/modules/homeNavigation/foodImgWithText.dart';
import 'package:moko/modules/homeNavigation/topSearch.dart';

class HomeNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TopSearch(), //takes 25% height
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.65,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.location_pin),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Sinza kwa remmy",
                        style: TextStyle(
                            fontFamily: "PoppinsRegular", fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 1, left: 10, right: 10, bottom: 5),
                  child: Title2("Nearest Restaurents"),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.22,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int item) => SizedBox(
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: FoodImgWithText("assets/images/sample_food.jpeg",
                            "burger", "4.5", "15min"),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.22,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int item) => SizedBox(
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: FoodImgWithText("assets/images/sample_food.jpeg",
                            "burger", "4.5", "15min"),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20, left: 10, right: 10, bottom: 10),
                  child: Title2("Popular Restaurents"),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.22,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int item) => SizedBox(
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: FoodImgWithText("assets/images/sample_food.jpeg",
                            "burger", "4.5", "15min"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
