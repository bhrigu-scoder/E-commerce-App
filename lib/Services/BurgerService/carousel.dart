import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carousel extends StatelessWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        CarouselSlider(
          items: [
            Container(
              //margin: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://st.depositphotos.com/1003326/1275/i/950/depositphotos_12753052-stock-photo-burger.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            //3rd Image of Slider
            Container(
              //margin: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://hips.hearstapps.com/del.h-cdn.co/assets/17/22/1600x800/landscape-1496164974-delish-veggie-burgers-2.jpg?resize=1200:*"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            //4th Image of Slider
            Container(
              //margin: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://images.unsplash.com/photo-1571091718767-18b5b1457add?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8YnVyZ2VyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            //5th Image of Slider
          ],

          //Slider Container properties
          options: CarouselOptions(
            height: 200.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 1,
          ),
        ),
      ],
    );
  }
}
