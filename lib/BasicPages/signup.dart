import 'dart:ui';

import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool isChecked =false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.blueAccent,
          onPressed: (){
            Navigator.pushNamed(context, '/welcome');
          },
        ),
        title: Text("Sign Up",
          style: TextStyle(
            color: Colors.blueAccent,
            fontWeight: FontWeight.bold,
            fontFamily: 'BalsamiqSans',
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Image(image: AssetImage("signup.png",), height: 300.0,
            width: 300.0,
          ),
          SizedBox(height: 40.0,),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Email",
                labelText: "Email Address",
              ),
            ),
          ),
          SizedBox(height: 20.0,),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Password",
                labelText: "Password",
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Password",
                labelText: "Confirm Password",
              ),
            ),
          ),
          SizedBox(height: 20.0,),
          ListTile(
            leading: Checkbox(value: isChecked,
                onChanged: (isChecked){
                  setState(() {
                    this.isChecked = true;
                  });
                }
            ),
            title: Text(
              "I Agree to all Terms & Conditions",
              style: TextStyle(
                fontFamily: 'BalsamiqSans',
              ),
            ),
          ),
          InkWell(
            child: Container(
              child: Text("SIGN UP",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'BalsamiqSans',
                  color: Colors.white,
                ),),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.blueAccent,
              ),
              padding: EdgeInsets.fromLTRB(125.0, 16.0, 125.0, 16.0),
              margin: EdgeInsets.fromLTRB(50.0, 0,50.0, 10.0),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/dashboard');
            },
          ),
          SizedBox(height: 15,),
          InkWell(
            child: Text(
              "Already have an account? Login",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.blueAccent,
                fontSize: 16,
              ),
            ),
            onTap: (){
              Navigator.pushNamed(context, '/login');
            },
          ),
        ],
      ),
    );
  }
}
