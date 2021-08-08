import 'package:flutter/material.dart';

class FoodImageBox extends StatelessWidget {
  final String img;

  FoodImageBox(this.img);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        img,
        fit: BoxFit.fill,
      ),
    );

  }
}
