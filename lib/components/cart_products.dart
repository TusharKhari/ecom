// ignore_for_file: prefer_const_constructors_in_immutables, camel_case_types, prefer_const_constructors, non_constant_identifier_names

//import 'dart:html';

import 'package:flutter/material.dart';

class Cart_Products extends StatefulWidget {
  Cart_Products({Key key}) : super(key: key);

  @override
  _Cart_ProductsState createState() => _Cart_ProductsState();
}

class _Cart_ProductsState extends State<Cart_Products> {
  var Products_on_the_cart = [
    {
      "name": "blazer",
      "picture": "https://i.ibb.co/DwdwyF4/blazer1.jpg",
      //"old_price": "120",
      "price": "85",
      "size": "M",
      "color": "black",
      "quantity": "1"
      // "product_detail": "this is a blazer",
    },
    {
      "name": "red dress",
      "picture": "https://i.ibb.co/HnqYbWT/dress1.jpg",
      // "old_price": "100",
      "price": "50",
      "size": "L",
      "color": "red",
      "quantity": "1"
      //"product_detail": "this is a red dress",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Products_on_the_cart.length,
        itemBuilder: (context, index) {
          return Single_cart_product(
            cart_prod_name: Products_on_the_cart[index]["name"],
            cart_prod_color: Products_on_the_cart[index]["color"],
            cart_prod_qty: Products_on_the_cart[index]["quantity"],
            cart_prod_size: Products_on_the_cart[index]["size"],
            cart_prod_price: Products_on_the_cart[index]["price"],
            cart_prod_picture: Products_on_the_cart[index]["picture"],
          );
        });
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  //final prod_old_price;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

  const Single_cart_product(
      {Key key,
      this.cart_prod_color,
      this.cart_prod_name,
      this.cart_prod_picture,
      this.cart_prod_price,
      this.cart_prod_qty,
      this.cart_prod_size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        // ========= LEADING SECTION ========= product image======
        leading: Image.network(
          cart_prod_picture,
          height: double.maxFinite,
          fit: BoxFit.cover,
        ),

        // ============ TITLE SECTION ===========
        title: Text(cart_prod_name),
        subtitle: Column(
          children: [
            //row inside the column
            Row(
              children: [
                // ====================== this section is for the size of the products =================================
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'size',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    cart_prod_size,
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),

                // ====================== this section is for the color of the products =================================
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'color',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    cart_prod_color,
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),

                Center(
                  child: Text(
                    '     QTY',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),

                // ======== QTY SECTION ========== this is in trailing section

                Padding(
                  padding: const EdgeInsets.only(right: 0, left: 10),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.arrow_drop_up,
                          size: 40,
                        ),
                      ),
                      Text(
                        cart_prod_qty,
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.arrow_drop_down,
                          size: 40,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // =========== THIS SECTION IS FOR THE PRODUCT PRICE ================

            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "\$${cart_prod_price}",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
        // trailing: Column(
        //   //mainAxisAlignment: MainAxisAlignment.start,
        //   children: [
        //     //   IconButton(

        //     //     onPressed: () {},
        //     //     icon: Icon(Icons.arrow_drop_up),
        //     //   ),
        //     //   IconButton(
        //     //     onPressed: () {},
        //     //     icon: Icon(Icons.arrow_drop_down),
        //     //   ),
        //     //   Text('data'),
        //     //   Text('data'),
        //     //   Text('data'),
        //     //

        //     InkWell(
        //       onTap: () {},
        //       child: Icon(
        //         Icons.arrow_drop_up,
        //         size: 28,
        //       ),
        //     ),
        //     Text('data'),
        //     InkWell(
        //       onTap: () {},
        //       child: Icon(
        //         Icons.arrow_drop_down,
        //         size: 28,
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );

    
  }
}
