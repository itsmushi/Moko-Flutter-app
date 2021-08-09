import 'package:flutter/material.dart';
import 'package:moko/components/title2.dart';
import 'package:moko/modules/cart/components/continueBtn.dart';
import 'package:moko/modules/cart/components/subTotalRow.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  onContinueHandler(BuildContext context) {
    print("continue from cart module");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.backpack),
            ),
            Title2("Cart")
          ],
        ),
        Container(
          color: Color.fromRGBO(255, 165, 0, 1),
          margin: EdgeInsets.all(10),
          child: ListTile(
            leading: Icon(Icons.location_on),
            title: Text("Deliver to"),
            subtitle: Text("Sinza kwa remmy"),
            trailing: Icon(Icons.expand_more),
          ),
        ),
        Container(
          color: Color.fromRGBO(255, 165, 0, 1),
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SubTotalRow("Item total", "\$20.49"),
              SubTotalRow("Discount", "-\$10"),
              SubTotalRow("Tax", "\$2"),
              Row(
                //this is the total
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total",
                      style: TextStyle(
                          color: Color.fromARGB(255, 131, 131, 131),
                          fontSize: 16,
                          fontFamily: 'PoppinsBold')),
                  Text("\$12.49",
                      style: TextStyle(
                          color: Color.fromARGB(255, 131, 131, 131),
                          fontSize: 16,
                          fontFamily: 'PoppinsBold'))
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ContinueBtn(
                    title: "Continue", onSubmittingForm: onContinueHandler),
              )
            ],
          ),
        )
      ],
    );
  }
}
