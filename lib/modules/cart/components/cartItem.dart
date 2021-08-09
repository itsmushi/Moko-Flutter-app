import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moko/components/foodImageBox.dart';

class CartItem extends StatelessWidget {
  final String img;

  CartItem(this.img);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      color: Colors.white,
      child: Row(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.13,
            child: FoodImageBox(img),
            width: MediaQuery.of(context).size.width * 0.3,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              children: [
                Text(
                  "Burger with some",
                  style: TextStyle(fontFamily: 'PoppinsMedium', fontSize: 14),
                ),
                Row(
                  children: [
                    GestureDetector(
                      child: FaIcon(
                        FontAwesomeIcons.plus,
                        size: 10,
                      ),
                      onTap: () {
                        print("adding");
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        "1",
                        style: TextStyle(
                            fontFamily: 'PoppinsMedium', fontSize: 14),
                      ),
                    ),
                    GestureDetector(
                      child: FaIcon(
                        FontAwesomeIcons.minus,
                        size: 10,
                      ),
                      onTap: () {
                        print("reducing");
                      },
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FaIcon(
                FontAwesomeIcons.times,
                color: Color.fromRGBO(255, 112, 0, 1),
              ),
              Text(
                "152.00",
                style: TextStyle(fontFamily: 'PoppinsMedium', fontSize: 15),
              )
            ],
          )
        ],
      ),
    );
  }
}
