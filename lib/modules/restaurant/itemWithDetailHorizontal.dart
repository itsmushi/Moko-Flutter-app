import 'package:flutter/material.dart';
import 'package:moko/components/foodImageBox.dart';

class ItemDetailHorizontal extends StatelessWidget {
  final img;
  ItemDetailHorizontal(this.img);
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
                  "food_name",
                  style: TextStyle(fontFamily: 'PoppinsMedium', fontSize: 14),
                ),
                Text("in PIzza mania",
                    style:
                        TextStyle(fontFamily: 'PoppinsRegular', fontSize: 12)),
                Text("Price. 152.00",
                    style: TextStyle(fontFamily: 'PoppinsBold', fontSize: 14))
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.add))
        ],
      ),
    );
  }
}
