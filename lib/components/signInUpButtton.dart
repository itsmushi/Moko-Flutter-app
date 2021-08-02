import 'package:flutter/material.dart';

class SignInUpButtton extends StatelessWidget {
  final String title;
  final dynamic Function(BuildContext context) onSubmittingForm;

  SignInUpButtton({required this.title, required this.onSubmittingForm});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
        height: MediaQuery.of(context).size.height / 18,
        width: MediaQuery.of(context).size.width / 1.3,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color.fromRGBO(55, 55, 55, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),
        child: SizedBox(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'PoppinsBold',
              fontSize: 22,
            ),
          ),
        ),
        onPressed: () {
          onSubmittingForm(context);
        },
       
      ),
    );
  }
}
