import 'package:flutter/material.dart';

class FoodImageBox extends StatelessWidget {
  final String img;

  FoodImageBox(this.img);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Image.asset(
        img,
        fit: BoxFit.fill,
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
    );
  }
}
