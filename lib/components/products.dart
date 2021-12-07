// ignore_for_file: prefer_const_constructors_in_immutables , prefer_, prefer_const_constructors

// import 'dart:convert';
// //import 'dart:html';

// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   HomePage({Key key}) : super(key: key);

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 900,
//       child: FutureBuilder(
//           future: DefaultAssetBundle.of(context)
//               .loadString("lib/resources/products_data.json"),
//           builder: (context, snapshot) {
//             var mydata = json.decode(snapshot.data.toString());
//             if (mydata == null) {
//               return Center(child: Text('loading'));
//             } else {
//               return //Center(child: Text(mydata["name"]));
//                   ListView(
//                 physics: NeverScrollableScrollPhysics(),
//                 children: [
//                   Image.network('${mydata[0]["url"]}'),
//                   Text(mydata[1]["name"]),
//                   Text(mydata[0]["name"]),
//                   Image.network('${mydata[0]["url"]}'),
//                   Text(mydata[2]["name"]),
//                 ],
//               );
//             }
//           }),
//     );
//   }
// }

// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, camel_case_types, non_constant_identifier_names
import 'package:ecom/components/product_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
//my imported stuff

class Products extends StatefulWidget {
  Products({Key key}) : super(key: key);

  @override
  _ProductaState createState() => _ProductaState();
}

class _ProductaState extends State<Products> {
  var product_list = [
    {
      "name": "blazer",
      "picture": "https://i.ibb.co/DwdwyF4/blazer1.jpg",
      "old_price": "120",
      "price": "85",
      "product_detail": "this is a men's blazer"
    },
    {
      "name": "blazer",
      "picture": "https://i.ibb.co/TKD8JQF/blazer2.jpg",
      "old_price": "150",
      "price": "90",
      "product_detail": "this is a women's blazer"
    },
    {
      "name": "red dress",
      "picture": "https://i.ibb.co/HnqYbWT/dress1.jpg",
      "old_price": "100",
      "price": "55",
      "product_detail": "this is a red dress"
    },
    {
      "name": "brown hills",
      "picture": "https://i.ibb.co/Fqbng6m/hills1.jpg",
      "old_price": "95",
      "price": "50",
      "product_detail": "pair of brown hills"
    },
    {
      "name": "red hills",
      "picture": "https://i.ibb.co/h74RD62/hills2.jpg",
      "old_price": "135",
      "price": "65",
      "product_detail": "pair of red hills"
    },
    {
      "name": "lower",
      "picture": "https://i.ibb.co/yfss7SP/pants1.jpg",
      "old_price": "125",
      "price": "58",
      "product_detail": "comfortable black lower"
    },
    {
      "name": "lower",
      "picture": "https://i.ibb.co/f0M3KqH/pants2.jpg",
      "old_price": "145",
      "price": "68",
      "product_detail": "comfortable grey lower"
    },
    {
      "name": "shoes",
      "picture": "https://i.ibb.co/6FfM2JJ/shoe1.jpg",
      "old_price": "128",
      "price": "61",
      "product_detail": "pair of grey color shoes"
    },
    {
      "name": "skirt",
      "picture": "https://i.ibb.co/NW9jKmh/skt1.jpg",
      "old_price": "158",
      "price": "72",
      "product_detail": "flower design sky blue skirt "
    },
    {
      "name": "skirt",
      "picture": "https://i.ibb.co/RS80f2N/skt2.jpg",
      "old_price": "168",
      "price": "81",
      "product_detail": "plain pink skirt"
    },
    {
      "name": "black dress",
      "picture": "https://i.ibb.co/gP6DKHd/dress2.jpg",
      "old_price": "130",
      "price": "65",
      "product_detail": "this is a black dress"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        //  scrollDirection : ScrollDirection.forward ,
        physics: NeverScrollableScrollPhysics(),
        itemCount: product_list.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_old_price: product_list[index]['old_price'],
            prod_picture:
                ('${product_list[index]["picture"]}'), //Image.network('${mydata[0]["url"]}'),
            prod_price: product_list[index]['price'],
            product_detail: product_list[index]['product_detail'],
          );
        });
  }
}

class Single_prod extends StatefulWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;
  final product_detail;

  Single_prod(
      {Key key,
      this.prod_name,
      this.prod_old_price,
      this.prod_picture,
      this.prod_price,
      this.product_detail})
      : super(key: key);

  @override
  _Single_prodState createState() => _Single_prodState();
}

class _Single_prodState extends State<Single_prod> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: widget.prod_name,
        child: Material(
          child: InkWell(
            onTap: () {
              return Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ProductDetails(
                    // here we are passing the value of the product to product details page
                    product_detail_name: widget.prod_name,
                    product_detail_new_price: widget.prod_price,
                    product_detail_old_price: widget.prod_old_price,
                    product_detail_picture: widget.prod_picture,
                    product_detail_data: widget.product_detail,
                  ),
                ),
              );
            },
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.prod_name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Text(
                    widget.prod_price,
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.w800),
                  ),
                  subtitle: Text(
                    widget.prod_old_price,
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w800,
                        decoration: TextDecoration.lineThrough),
                  ),
                ),
              ),
              child: Image.network(
                widget.prod_picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
