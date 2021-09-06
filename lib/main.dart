import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('E-commerce'),
          backgroundColor: Colors.lightBlue[600],
        ),
        body: new Container(
          color: Color(0xff258DED),
          height: 400.0,
          alignment: Alignment.center,
          child: new Column(
            children: [
              new Container(
                height: 200.0,
                width: 200.0,
                decoration: new BoxDecoration(
                    image: DecorationImage(
                        image: new AssetImage('images/image-1.jpg'),
                        fit: BoxFit.fill),
                    shape: BoxShape.circle),
              ),
              new Container(
                child: new Text(
                  'Welcome to Prime Message',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Aleo',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        // CarouselSlider(
        //   options: CarouselOptions(
        //     height: 250,
        //     aspectRatio: 16 / 9,
        //     viewportFraction: 0.8,
        //     initialPage: 0,
        //     enableInfiniteScroll: true,
        //     reverse: false,
        //     autoPlay: true,
        //     autoPlayInterval: Duration(seconds: 3),
        //     autoPlayAnimationDuration: Duration(milliseconds: 800),
        //     autoPlayCurve: Curves.fastOutSlowIn,
        //     enlargeCenterPage: true,
        //     scrollDirection: Axis.horizontal,
        //   ),
        //   items: [
        //     'images/image-1.jpg',
        //     'images/images-2.jpg',
        //   ].map((i) {
        //     return Builder(
        //       builder: (BuildContext context) {
        //         return Container(
        //           width: MediaQuery.of(context).size.width,
        //           margin: EdgeInsets.symmetric(
        //             horizontal: 2.0,
        //           ),
        //           child: Image(
        //             image: AssetImage('$i'),
        //           ),
        //         );
        //       },
        //     );
        //   }).toList(),
        // ),
      ),
    ),
  );
}
