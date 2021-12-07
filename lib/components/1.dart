// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors
import 'package:flutter/material.dart';

import 'package:carousel_pro/carousel_pro.dart';

//corousel

class One extends StatefulWidget {
  One({Key key}) : super(key: key);

  @override
  _OneState createState() => _OneState();
}

class _OneState extends State<One> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Container(
      //   color: Colors.amber,
      //   // height: 150,
      //   // width: 300,
      //   child: Column(
      //     children: [
      //       Image.network('https://i.ibb.co/DYQvnBQ/4-Ze8-NTG4-Sw-D62-PZRH0sn-JT8-YM9ir-OQJCmx-Wgz-2zzk-QEAdq5s-Go-RRJYROll-Z6p-Pec-FA-w1200-h630-p.jpg'),

      //     ],
      //   ),
      // ),

      body: Container(
        height: 200,
        child: Carousel(
         
          boxFit: BoxFit.cover,
          images: [
            NetworkImage(
                //c1
                
                '"https://i.ibb.co/drDg5H3/c1.jpg'),
            NetworkImage(
                //m1
                'https://i.ibb.co/CKNVzYh/m1.jpg'),
            NetworkImage(
                //m2
                'https://i.ibb.co/5YDVv2K/m2.jpg'),
            NetworkImage(
                //w1
                'https://i.ibb.co/pxqwHXK/w1.jpg'),
            NetworkImage(
                //w3
                'https://i.ibb.co/t3fS4JP/w3.jpg'),
            NetworkImage(
                //w4
                'https://i.ibb.co/NmsZw95/w4.jpg'),
          ],
          //autoplay: false,
          dotSize: 9,
          indicatorBgPadding: 0,
          dotColor: Colors.red,
          animationCurve: Curves.fastOutSlowIn,
          // animationDuration: Duration(microseconds: 1000),
          // autoplayDuration: Duration(seconds: 10),
        ),
      ),
    );
  }
}
