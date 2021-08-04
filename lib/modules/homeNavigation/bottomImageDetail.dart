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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              foodName,
              style: TextStyle(fontFamily: 'PoppinsRegular', fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.star,
                        color: Color.fromRGBO(255, 178, 0, 1),
                      ),
                    ),
                    Text(
                      rateValue,
                      style:
                          TextStyle(fontFamily: "PoppinsMedium", fontSize: 12),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.access_time),
                    Text(
                     time,
                      style: textStyle,
                    )
                  ],
                )
              ],
            ),
          )
        ]);
  }
}
