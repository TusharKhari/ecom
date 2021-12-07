// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, non_constant_identifier_names, camel_case_types

import 'dart:ui';

import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;
  final product_detail_data;
  ProductDetails(
      {Key key,
      this.product_detail_name,
      this.product_detail_new_price,
      this.product_detail_old_price,
      this.product_detail_picture,
      this.product_detail_data})
      : super(key: key);

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('Fashapp'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 300,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.network(widget.product_detail_picture),
              ),
              footer: Container(
                color: Colors.white,
                child: ListTile(
                  leading: Text(
                    widget.product_detail_name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  title: Row(
                    children: [
                      //prod old price
                      Expanded(
                        child: Text(
                          "${widget.product_detail_old_price}",
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w800,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      //prod new price
                      Expanded(
                        child: Text(
                          "${widget.product_detail_new_price}",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.w800),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
// ============== the first buton =========================
          Row(
            children: [
              /// ================= the size button ==========
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Size'),
                            content: Container(
                              height: 100,
                              child: Column(
                                children: [
                                  Text('S'),
                                  Text('M'),
                                  Text('L'),
                                  Text('XL'),
                                  Text('XXL'),
                                ],
                              ),
                            ),
                            actions: [
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text('close'),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text('Size'),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),

              /// ================= the color button ==========
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Color'),
                            content: Text('choose the color'),
                            actions: [
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text('close'),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text('Color'),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),

              /// ================= the qty button ==========
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Quantity'),
                            content: Text('choose the quantity'),
                            actions: [
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text('close'),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text('Qty'),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          //==================== the second buttons =====================
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                    onPressed: () {},
                    color: Colors.red,
                    textColor: Colors.white,
                    elevation: 0.2,
                    //height: 100,
                    child:
                        // Row(
                        //   children: [
                        //     Expanded(
                        //       child: Text('Size'),
                        //     ),
                        //     Expanded(
                        //       child: Icon(Icons.arrow_drop_down),
                        //     ),
                        //   ],
                        // ),
                        Text('Buy Now')),
              ),
              IconButton(
                  icon: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.red,
                  ),
                  onPressed: () {}),
              IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  ),
                  onPressed: () {}),
            ],
          ),

          Divider(
              //color: Colors.red,
              //  thickness: 1,
              ),

          ListTile(
            title: Text('Producy details'),
            subtitle: Text(
                // 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldu PageMaker including versions of Lorem Ipsum'
                widget.product_detail_data),
          ),
          Divider(),
          Row(
            // product name
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(
                  12,
                  5,
                  5,
                  5,
                ),
                child: Text(
                  'Product name',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text('widget.product_detail_name'),
              ),
            ],
          ),
          Row(
            //product brand
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(
                  12,
                  5,
                  5,
                  5,
                ),
                child: Text(
                  'Product brand',
                  style: TextStyle(color: Colors.grey),
                ),
              ),

              // remamber to create the product brand
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text('Brand X'),
              ),
            ],
          ),
          // add rthe product condition
          Row(
            //product condition
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(
                  12,
                  5,
                  5,
                  5,
                ),
                child: Text(
                  'Product condition',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text('New'),
              ),
            ],
          ),
          Divider(),
          // container for similar products
          Container(
            height: 360,
            color: Colors.amber,
          ),
        ],
      ),
    );
  }
}

class Similar_products extends StatefulWidget {
  Similar_products({Key key}) : super(key: key);

  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

// class PD2 extends StatefulWidget {
//   PD2({Key key}) : super(key: key);

//   @override
//   _PD2State createState() => _PD2State();
// }

// class _PD2State extends State<PD2> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0.1,
//         backgroundColor: Colors.red,
//         title: Text('Fashapp'),
//         actions: [
//           IconButton(
//             icon: Icon(
//               Icons.search,
//               color: Colors.white,
//             ),
//             onPressed: () {},
//           ),
//           IconButton(
//             icon: Icon(
//               Icons.shopping_cart,
//               color: Colors.white,
//             ),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: ListView(
//         children: [
//           Container(
//             height: 300,
//             child: GridTile(
//               child: Container(
//                 color: Colors.white,
//                 child: Image.network('https://i.ibb.co/HnqYbWT/dress1.jpg'),
//               ),
//               footer: Container(
//                 color: Colors.white,
//                 child: ListTile(
//                   leading: Text(
//                     'Red Dress',
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//                   ),
//                   title: Row(
//                     children: [
//                       //prod old price
//                       Expanded(
//                         child: Text(
//                           '\$100',
//                           style: TextStyle(
//                               color: Colors.black54,
//                               fontWeight: FontWeight.w800,
//                               decoration: TextDecoration.lineThrough),
//                         ),
//                       ),
//                       //prod new price
//                       Expanded(
//                         child: Text(
//                           '\$50',
//                           style: TextStyle(
//                             color: Colors.red,
//                             fontWeight: FontWeight.w800,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),

//           //==================== the first buttons =====================
//           Row(
//             children: [
//               /// ================= the size button ==========
//               Expanded(
//                 child: MaterialButton(
//                   onPressed: () {},
//                   color: Colors.white,
//                   textColor: Colors.grey,
//                   child: Row(
//                     children: [
//                       Expanded(
//                         child: Text('Size'),
//                       ),
//                       Expanded(
//                         child: Icon(Icons.arrow_drop_down),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),

//               /// ================= the size button ==========
//               Expanded(
//                 child: MaterialButton(
//                   onPressed: () {},
//                   color: Colors.white,
//                   textColor: Colors.grey,
//                   child: Row(
//                     children: [
//                       Expanded(
//                         child: Text('Color'),
//                       ),
//                       Expanded(
//                         child: Icon(Icons.arrow_drop_down),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),

//               /// ================= the size button ==========
//               Expanded(
//                 child: MaterialButton(
//                   onPressed: () {},
//                   color: Colors.white,
//                   textColor: Colors.grey,
//                   child: Row(
//                     children: [
//                       Expanded(
//                         child: Text('Qty'),
//                       ),
//                       Expanded(
//                         child: Icon(Icons.arrow_drop_down),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),

//           //==================== the second buttons =====================
//           Row(
//             children: [
//               Expanded(
//                 child: MaterialButton(
//                     onPressed: () {},
//                     color: Colors.red,
//                     textColor: Colors.white,
//                     elevation: 0.2,
//                     //height: 100,
//                     child:
//                         // Row(
//                         //   children: [
//                         //     Expanded(
//                         //       child: Text('Size'),
//                         //     ),
//                         //     Expanded(
//                         //       child: Icon(Icons.arrow_drop_down),
//                         //     ),
//                         //   ],
//                         // ),
//                         Text('Buy Now')),
//               ),
//               IconButton(
//                   icon: Icon(
//                     Icons.add_shopping_cart,
//                     color: Colors.red,
//                   ),
//                   onPressed: () {}),
//               IconButton(
//                   icon: Icon(
//                     Icons.favorite_border,
//                     color: Colors.red,
//                   ),
//                   onPressed: () {}),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
