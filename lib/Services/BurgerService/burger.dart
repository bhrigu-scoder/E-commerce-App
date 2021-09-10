import 'package:basic_app/Services/BurgerService/carousel.dart';
import 'package:basic_app/homepage.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';


class Burger extends StatelessWidget {
  const Burger({Key? key}) : super(key: key);

  final int value=4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("SERVICE INFO",
          style: TextStyle(
            fontFamily: 'BalsamiqSans',
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.navigate_before,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/dashboard');
          },
        ),
      ),
      body: Column(
        children: <Widget>[
          Carousel(),
          SizedBox(height: 20.0,),
          Text("Naturals Cafe & Restaurant",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.blueAccent[200],
              fontWeight: FontWeight.bold,
              fontFamily: 'BalsamiqSans',
            ),
          ),
          SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SmoothStarRating(
                starCount: 5,
                isReadOnly: true,
                rating: 4,
                size: 15.0,
                color: Colors.deepOrange,
                borderColor: Colors.grey,
              ),
              SizedBox(width: 5.0,),
              Text("4.1",
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontFamily: 'BalsamiqSans',
                  fontSize: 15.0,
                ),
              ),
              SizedBox(width: 20.0,),
              Text("|",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(width: 20.0,),
              Text("13k followers",
                style: TextStyle(
                  color: Colors.blueAccent[200],
                  fontFamily: 'BalsamiqSans',
                  fontSize: 15.0,
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.price_change_outlined,
                color: Colors.blueAccent[200],
              ),
              Text(" Starting from:-",
                style: TextStyle(
                  color: Colors.blueAccent[200],
                  fontFamily: 'BalsamiqSans',
                ),
              ),
              SizedBox(width: 5.0,),
              Text("AED 50",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent[200],
                  fontFamily: 'BalsamiqSans',
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0,),
          Divider(thickness: 2.0, color: Colors.grey[200],),
          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              SizedBox(width: 20,),
              Icon(Icons.rate_review_outlined,
                color: Colors.blueAccent[200],
              ),
              SizedBox(width: 5.0,),
              Text("See Reviews",
                style: TextStyle(
                  color: Colors.blueAccent[200],
                  fontFamily: 'BalsamiqSans',
                ),
              ),
              SizedBox(width: 40.0,),
              Icon(Icons.theater_comedy_rounded,
                color: Colors.blueAccent[200],
              ),
              SizedBox(width: 5.0,),
              Text("Follow",
                style: TextStyle(
                  color: Colors.blueAccent[200],
                  fontFamily: 'BalsamiqSans',
                ),
              ),
              SizedBox(width: 40.0,),
              Icon(Icons.share_outlined,
                color: Colors.blueAccent[200],
              ),
              SizedBox(width: 5.0,),
              Text("Share",
                style: TextStyle(
                  color: Colors.blueAccent[200],
                  fontFamily: 'BalsamiqSans',
                ),
              ),
              SizedBox(width: 40.0, ),
            ],
          ),
          SizedBox(height: 20.0,),
          Divider(thickness: 2.0, color: Colors.grey[200],),
          SizedBox(height: 10.0,),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[

                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text("ABOUT",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent[200],
                      fontFamily: 'BalsamiqSans',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(" A second option is to use the random paragraph somewhere in a short story they create. The third option is to have the random paragraph be the ending paragraph in a short story. No matter which of these challenges is undertaken, the writer is forced to use creativity to incorporate the paragraph into their writing.",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'BalsamiqSans',
                    ),
                  ),
                ),
              ]
          ),
        ],
      ),


    );
  }
}

