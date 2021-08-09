import 'package:flutter/material.dart';

class RestaurantTitle extends StatelessWidget {
  final String foodName;
  final String rateValue;
  final String time;
  RestaurantTitle(this.foodName, this.rateValue, this.time);

  final TextStyle textStyle =
      TextStyle(fontFamily: 'PoppinsRegular', fontSize: 15);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            foodName,
            style: TextStyle(fontFamily: 'PoppinsRegular', fontSize: 30),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.star,
                      size: 15,
                      color: Color.fromRGBO(255, 178, 0, 1),
                    ),
                  ),
                  Text(
                    rateValue,
                    style: TextStyle(fontFamily: "PoppinsMedium", fontSize: 15),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.access_time,
                      size: 15,
                    ),
                    Text(
                      time,
                      style: textStyle,
                    )
                  ],
                ),
              ),
            ],
          ),
        ]);
  }
}
