import 'package:flutter/material.dart';

class Title2 extends StatelessWidget {
  final String title;

  Title2(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontFamily: 'PoppinsMedium', fontSize: 18),
    );
  }
}
