import 'package:flutter/material.dart';

class BottomImageDetail extends StatelessWidget {
  final String foodName;
  final String rateValue;
  final String time;
  BottomImageDetail(this.foodName, this.rateValue, this.time);

  final TextStyle textStyle =
      TextStyle(fontFamily: 'PoppinsRegular', fontSize: 12);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            foodName,
            style: TextStyle(fontFamily: 'PoppinsRegular', fontSize: 16),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.star,
                      size: 12,
                      color: Color.fromRGBO(255, 178, 0, 1),
                    ),
                  ),
                  Text(
                    rateValue,
                    style: TextStyle(fontFamily: "PoppinsMedium", fontSize: 12),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.access_time,
                    size: 12,
                  ),
                  Text(
                    time,
                    style: textStyle,
                  )
                ],
              ),
            ],
          ),
        ]);
  }
}
