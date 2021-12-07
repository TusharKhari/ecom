// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
//import 'package:carousel_pro/carousel_pro.dart';
import 'package:ecom/components/test.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      height: 140,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Column(
                    //children: [Text('Categeries')],
                    ),
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Image.network(
                        'https://i.ibb.co/WsKwMSP/tshirt.png',
                        height: 80,
                        width: 110,
                      ),
                      Text('t-shirt')
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Image.network(
                        'https://i.ibb.co/Ht9bBCr/dress.png',
                        height: 80,
                        width: 100,
                      ),
                      Text('dress'),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Image.network(
                        'https://i.ibb.co/4P2gg2X/jeans.png',
                        height: 80,
                        width: 100,
                      ),
                      Text('pants/jeans'),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Image.network(
                        'https://i.ibb.co/2j6Yg3V/formal.png',
                        height: 80,
                        width: 100,
                      ),
                      Text('formal'),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Image.network(
                        'https://i.ibb.co/5vWqm8k/informal.png',
                        height: 80,
                        width: 100,
                      ),
                      Text('informal'),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Image.network(
                        'https://i.ibb.co/QKMfmVb/shoe.png',
                        height: 80,
                        width: 100,
                      ),
                      Text('shoes'),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Image.network(
                        'https://i.ibb.co/RB3zhfh/accessories.png',
                        height: 80,
                        width: 100,
                      ),
                      Text('others'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  // final String image_location;
  // final String image_caption;

  // Category({
  //   this.image_location,
  //   this.image_caption,
  // })

  const Category({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Padding(
    //   padding: const EdgeInsets.only(left: 2, top: 2),
    //   child: InkWell(
    //     onTap: () {},
    //     child: ListTile(
    //         title: Image.network(
    //           'https://drive.google.com/uc?export=view&id=1WEQ3G-5kOBXs3yuGcsVywT7iEwON_oM2',
    //           height: 20,
    //           width: 20,
    //         ),
    //         subtitle: Text('t-shirt')),
    //   ),
    // );

    return Column(
      children: [],
    );
  }
}

/*

https://drive.google.com/file/d/1KywqtuybDyOBsigyGQZiuvejmkTUkq23/view?usp=sharing
https://drive.google.com/uc?export=view&id=1SaVNb0I7lBdzQcvXVAWa_Rs4Oswb25GG




*/
