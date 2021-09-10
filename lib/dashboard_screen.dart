import 'package:basic_app/homepage.dart';
import 'package:basic_app/menu.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios,),
            onPressed: (){
              Navigator.pushNamed(context, '/login');
            },
          ),
          centerTitle: true,
          title: Text("HSR Layout, Banglore"),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.menu_sharp)),
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.search)),
              Tab(icon: Icon(Icons.notifications_none)),
              Tab(icon: Icon(Icons.messenger_outline_sharp)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Menu(),
            HomePage(),
            buildPage("SearchPage"),
            buildPage("NotificationPage"),
            buildPage("chatpage"),
          ],
        ),
      ),
    );
  }
}


Widget buildPage(String text) => Center(
  child: Text(
    text,
    style: TextStyle(fontSize: 28),
  ),
);