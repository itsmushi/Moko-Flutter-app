import 'package:flutter/material.dart';

class TopTitle extends StatelessWidget {
  final String title;

  TopTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 255, 165, 0),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(50),
          bottomLeft: Radius.circular(-50),
        ),
      ),
      child: SizedBox(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'PoppinsBold',
                    color: Color.fromRGBO(55, 55, 55, 1)),
              )
            ]),
        height: MediaQuery.of(context).size.height / 4,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}
