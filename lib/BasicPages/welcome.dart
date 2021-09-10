import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image(image: AssetImage('welcome.png')),
          InkWell(
            child: Container(
              child: Text("Login",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontFamily: 'BalsamiqSans',
                ),),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.blueAccent,
              ),
              padding: EdgeInsets.all(15.0),
              margin: EdgeInsets.fromLTRB(50.0, 0,50.0, 10.0),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/login');
            },
          ),
          InkWell(
            child: Container(
              child: Text("SignUp",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontFamily: 'BalsamiqSans',
                ),),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.blueAccent,
              ),
              padding: EdgeInsets.all(15.0),
              margin: EdgeInsets.fromLTRB(50.0, 0,50.0, 10.0),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/signup');
            },
          ),
        ],
      ),
    );
  }
}
