import 'package:flutter/material.dart';
import 'package:moko/components/foodImageBox.dart';
import 'package:moko/components/title2.dart';

class HomeNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
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
                style: TextStyle(fontFamily: "PoppinsRegular", fontSize: 18),
              ),
            ],
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 10),
          child: Title2("Nearest Restaurents"),
        ),
        FoodImageBox("assets/images/sample_food.jpeg"),
      ],
    );
  }
}
