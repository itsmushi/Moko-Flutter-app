import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moko/components/descriptionText.dart';
import 'package:moko/components/signInUpButtton.dart';
import 'package:moko/components/topTitle.dart';

import 'package:form_field_validator/form_field_validator.dart';
import 'package:moko/main.dart';
import 'package:moko/screens/HomeScreen/homeScreen.dart';
import 'package:moko/screens/signUpScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static String route_name = "login_screen";

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  onSubmittingForm(BuildContext context) {
    if (_formkey.currentState!.validate()) {
      print("Validated");
      print(emailController.text);
      print(passwordController.text);
      Navigator.of(context).pushReplacementNamed(HomeScreen.route_name);
    } else {
      print("Not Validated");

      Navigator.of(context).pushReplacementNamed(HomeScreen.route_name); //remove this later  its just for dev
    }
  }

  bool _isHidden = true;

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TopTitle(
            "Login",
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 18,
          ),
          FaIcon(
            FontAwesomeIcons.google,
            color: Colors.red,
          ),
          DescriptionText("or Login with Email"),
          SizedBox(
            height: MediaQuery.of(context).size.height / 1.8,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      child: TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          labelText: 'Email',
                          filled: true,
                        ),
                        validator: MultiValidator(
                          [
                            EmailValidator(errorText: "Enter a valid email"),
                            RequiredValidator(errorText: "Email is Required")
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 15, bottom: 15),
                      child: TextFormField(
                        controller: passwordController,
                        obscureText: _isHidden,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          labelText: 'Password',
                          filled: true,
                          suffix: InkWell(
                            onTap: _togglePasswordView,
                            child: Icon(
                              _isHidden
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "*Required";
                          } else
                            return null;
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, bottom: 10),
                      child: SignInUpButtton(
                          title: "Sign In", onSubmittingForm: onSubmittingForm),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        DescriptionText("Don't have an account?"),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            print("send to register activity");
                            Navigator.of(context)
                                .pushNamed(SignUpScreen.route_name);
                          },
                          child: Text(
                            "Register",
                            style: TextStyle(
                                color: Color.fromRGBO(55, 55, 55, 1),
                                fontSize: 15,
                                fontFamily: 'PoppinsBold'),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
