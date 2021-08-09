import 'package:flutter/material.dart';
import 'package:moko/components/title2.dart';
import 'package:moko/modules/restaurant/itemWithDetailHorizontal.dart';
import 'package:moko/modules/restaurant/restartTop.dart';

class RestaurantHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: Image.asset(
              "assets/images/sample_food.jpeg",
              fit: BoxFit.fill,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: RestaurantTitle("Westway", "4.6", "15min"),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Text(
            "Healthy eating means eating a variety of foods that give you the nutrients you need to maintain your health, feel good, and have energy.",
            style: TextStyle(
              fontFamily: 'PoppinsRegular',
              fontSize: 15,
              color: Color.fromRGBO(31, 131, 131, 1),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Title2("Westway Food Menu"),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Title2("Best Seller"),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.35,
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (BuildContext context, int item) =>
                  ItemDetailHorizontal("assets/images/sample_food.jpeg"),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  "See our menu",
                  style: TextStyle(color: Color.fromRGBO(255, 165, 0, 1)),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
