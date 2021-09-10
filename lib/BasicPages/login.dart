import 'package:flutter/material.dart';
import 'package:rounded_button/rounded_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined),
          color: Colors.blueAccent,
          onPressed: (){
            Navigator.pushNamed(context, '/welcome');
          },
        ),
        title: Text("Login",
          style: TextStyle(
            color: Colors.blueAccent,
            fontWeight: FontWeight.bold,
            fontFamily: 'BalsamiqSans',
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Image(image: NetworkImage("https://raw.githubusercontent.com/bhrigu-scoder/E-commerce-App/master/assets/images/test.png",),
                height: 200.0,
                width: 200.0,
              ),
              SizedBox(height: 40.0,),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Email",
                  labelText: "Email",
                ),
              ),
              SizedBox(height: 20.0,),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Password",
                  labelText: "Password",
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              InkWell(
                child: Container(
                  child: Text("LOGIN",
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
                  padding: EdgeInsets.fromLTRB(105.0, 16.0, 105.0, 16.0),
                  margin: EdgeInsets.fromLTRB(50.0, 0,50.0, 10.0),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/dashboard');
                },
              ),
              SizedBox(height: 10,),
              InkWell(
                child: Text(
                  "Don't have a Account? Click here to Sign Up",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.blueAccent,
                    fontSize: 16,
                  ),
                ),
                onTap: (){
                  Navigator.pushNamed(context, '/signup');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
