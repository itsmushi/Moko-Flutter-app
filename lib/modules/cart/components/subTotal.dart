import 'package:flutter/material.dart';

class SubTotal extends StatelessWidget {
  final String text;

  SubTotal(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            color: Color.fromARGB(255, 131, 131, 131),
            fontSize: 14,
            fontFamily: 'PoppinsRegular'));
  }
}
