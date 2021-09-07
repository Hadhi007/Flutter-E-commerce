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
        // CustomScrollView()
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  // height: 250,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ),
                items: [
                  'images/image-1.jpg',
                  'images/images-2.jpg',
                ].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(
                          horizontal: 2.0,
                        ),
                        child: Image(
                          image: AssetImage('$i'),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              Container(
                width: double.infinity,
                height: 300,
                child: Image.asset(
                  'gif/gif-1.gif',
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                width: double.infinity,
                height: 300,
                child: Image.asset(
                  'gif/gif-2.gif',
                  fit: BoxFit.fill,
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
