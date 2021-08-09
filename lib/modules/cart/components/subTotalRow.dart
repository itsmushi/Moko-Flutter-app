import 'package:flutter/material.dart';
import 'package:moko/modules/cart/components/subTotal.dart';

class SubTotalRow extends StatelessWidget {
  final String title;
  final String value;

  SubTotalRow(this.title, this.value);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [SubTotal(this.title), SubTotal(this.value)],
    );
  }
}
