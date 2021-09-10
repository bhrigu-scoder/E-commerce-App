import 'package:basic_app/BasicPages/login.dart';
import 'package:basic_app/BasicPages/signup.dart';
import 'package:basic_app/BasicPages/welcome.dart';
import 'package:basic_app/Services/BurgerService/burger.dart';
import 'package:basic_app/dashboard_screen.dart';
import 'package:basic_app/homepage.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) =>HomePage(),
        '/dashboard' : (context) => Dashboard(),
        '/burger' : (context) => Burger(),
        '/login' : (context) => LoginPage(),
        '/welcome' : (context) => WelcomePage(),
        '/signup' : (context) => SignupPage(),
      },
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomePage(),
    );
  }
}
