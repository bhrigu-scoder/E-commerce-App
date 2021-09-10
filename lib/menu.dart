import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(40.0, 40.0, 30.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('girl.png'),
                  radius: 30.0,
                ),
                SizedBox(width: 5.0),
                Text(" Janet Didi",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]
          ),
          Divider(
            height: 30.0,
            color: Colors.black12,
          ),
          Row(
            children: <Widget>[
              Icon(
                  Icons.home_outlined,
                  color: Colors.blueAccent
              ),
              SizedBox(width: 20.0,),
              Text(
                "Home",
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0,),
          Row(
            children: <Widget>[
              Icon(
                Icons.bookmark_outline_sharp,
                color: Colors.blueAccent,
              ),
              SizedBox(width: 20.0,),
              Text(
                "My Services",
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0,),
          Row(
            children: <Widget>[
              Icon(
                Icons.record_voice_over_sharp,
                color: Colors.blueAccent,
              ),
              SizedBox(width: 20.0,),
              Text(
                "Custom Requests",
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0,),
          Row(
            children: <Widget>[
              Icon(
                Icons.forward_to_inbox_rounded,
                color: Colors.blueAccent,
              ),
              SizedBox(width: 20.0,),
              Text(
                "Inbox",
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0,),
          Row(
            children: <Widget>[
              Icon(
                Icons.person_outline_rounded,
                color: Colors.blueAccent,
              ),
              SizedBox(width: 20.0,),
              Text(
                "My Profile",
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0,),
          Row(
            children: <Widget>[
              Icon(
                Icons.verified_outlined,
                color: Colors.blueAccent,
              ),
              SizedBox(width: 20.0,),
              Text(
                "Become Verified",
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0,),
          Row(
            children: <Widget>[
              Icon(
                Icons.flag_outlined,
                color: Colors.blueAccent,
              ),
              SizedBox(width: 20.0,),
              Text(
                "Report an Issue",
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0,),
          Row(
            children: <Widget>[
              Icon(
                Icons.collections_bookmark_outlined,
                color: Colors.blueAccent,
              ),
              SizedBox(width: 20.0,),
              Text(
                "Terms & Conditions of Use",
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0,),
          Row(
            children: <Widget>[
              Icon(
                Icons.help_outline_outlined,
                color: Colors.blueAccent,
              ),
              SizedBox(width: 20.0,),
              Text(
                "Help & Support",
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0,),
          Row(
            children: <Widget>[
              Icon(
                Icons.settings_applications_outlined,
                color: Colors.blueAccent,
              ),
              SizedBox(width: 20.0,),
              Text(
                "Notification Settings",
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0,),
          Row(
            children: <Widget>[
              Icon(
                Icons.logout,
                color: Colors.blueAccent,
              ),
              SizedBox(width: 20.0,),
              Text(
                "Logout",
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
