import 'package:flutter/material.dart';
import 'package:moko/modules/homeNavigation/bottomImageDetail.dart';
import 'package:moko/components/foodImageBox.dart';

class FoodImgWithText extends StatelessWidget {
  final String img;
  final String foodName;
  final String rateValue;
  final String time;
  FoodImgWithText(this.img, this.foodName, this.rateValue, this.time);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        FoodImageBox(img),
        BottomImageDetail(foodName, rateValue, time)
      ],
    );
  }
}
