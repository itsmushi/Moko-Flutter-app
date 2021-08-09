import 'package:flutter/material.dart';

class CategoryChip extends StatelessWidget {
  final String cat;
  CategoryChip(this.cat);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: ActionChip(
        label: Text(
          cat,
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
        onPressed: () {
          print("chips clicked");
        },
        backgroundColor: Color.fromRGBO(255, 165, 0, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
