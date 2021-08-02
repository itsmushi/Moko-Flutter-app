import 'package:flutter/material.dart';

class DescriptionText extends StatelessWidget {
  final String text;
  DescriptionText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: Color.fromARGB(255, 131, 131, 131),
          fontSize: 15,
          fontFamily: 'PoppinsRegular'),
    );
  }
}
