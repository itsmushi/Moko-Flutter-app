import 'package:flutter/material.dart';
import 'package:moko/app_state/userState.dart';
import 'package:moko/screens/HomeScreen/homeScreen.dart';
import 'package:moko/screens/loginScreen.dart';
import 'package:moko/screens/signUpScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  static String app_name = "Moki";

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider.value(value: User())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
        ),
        home: LoginScreen(),
        routes: {
          LoginScreen.route_name: (_) => LoginScreen(),
          SignUpScreen.route_name: (_) => SignUpScreen(),
          HomeScreen.route_name: (_) => HomeScreen(),
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(MyApp.app_name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to moko',
            ),
          ],
        ),
      ),
    );
  }
}
