import 'package:basic_app/Services/BurgerService/burger.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(left: 20.0),
      children: <Widget>[
        SizedBox(height: 15.0,),
        Text('FOLLOWING SERVICES',
          style: TextStyle(
            fontSize: 10.0,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20.0,),
        InkWell(
          child: Container(
            alignment: Alignment.topLeft,
            width: 80.0,
            height: 80.0,
            child: Image(image: AssetImage('burger.jfif')),
          ),
          onTap: (){
            Navigator.pushNamed(context, '/burger');
          },
        ),
        SizedBox(height: 10.0,),

        Text("  HOME MADE \n  BURGERS",
          style: TextStyle(
            fontFamily: 'BalsamiqSans',
            color: Colors.grey[800],
            fontSize: 13.0,
          ),
        ),
        SizedBox(height: 5.0,),

        Text("  By Burgerking",
          style: TextStyle(
            fontFamily: 'BalsamiqSans',
            color: Colors.grey[400],
            fontSize: 10.0,
          ),
        ),
        SizedBox(height: 10.0,),

        Text("  The spacious and best \n  in UAE with 32 amenities..",
          style: TextStyle(
            fontFamily: 'BalsamiqSans',
            color: Colors.grey[600],
            fontSize: 12.0,
          ),
        ),
      ],
    );
  }
}
