import 'package:flutter/material.dart';
import 'package:moko/components/title2.dart';
import 'package:moko/modules/cart/components/cartItem.dart';
import 'package:moko/modules/cart/components/continueBtn.dart';
import 'package:moko/modules/cart/components/subTotalRow.dart';

class CartPage extends StatelessWidget {
  final TextEditingController _filter = new TextEditingController();

  onContinueHandler(BuildContext context) {
    print("continue from cart module");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConstrainedBox(
            constraints: BoxConstraints.tightFor(
              height: MediaQuery.of(context).size.height * 0.12,
              width: MediaQuery.of(context).size.width,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Title2("Cart")],
            )),
        Container(
          margin: EdgeInsets.all(10),
          child: Card(
            color: Color.fromRGBO(255, 165, 0, 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: ListTile(
              leading: Icon(Icons.location_on),
              title: Text("Deliver to"),
              subtitle: Text("Sinza kwa remmy"),
              trailing: Icon(Icons.expand_more),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (BuildContext context, int item) =>
                  CartItem("assets/images/sample_food.jpeg"),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: TextField(
              controller: _filter,
              decoration: new InputDecoration(
                suffixIcon: new Icon(Icons.add),
                hintText: 'PROMO CODE',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
              ),
            ),
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
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'PoppinsBold')),
                  Text("\$12.49",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
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
