// // ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// //my imported stuff

// import 'package:ecom2/components/1.dart';
// import 'package:ecom2/components/horizontal_listview.dart';
// import 'product_details.dart';

// // class Sample extends StatefulWidget {
// //   Sample({Key key}) : super(key: key);

// //   @override
// //   _SampleState createState() => _SampleState();
// // }

// // class _SampleState extends State<Sample> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: SliverGrid(
// //         gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
// //           maxCrossAxisExtent: 200.0,
// //           mainAxisSpacing: 10.0,
// //           crossAxisSpacing: 10.0,
// //           childAspectRatio: 4.0,
// //         ),
// //         delegate: SliverChildBuilderDelegate(
// //           (BuildContext context, int index) {
// //             return Container(
// //               alignment: Alignment.center,
// //               color: Colors.teal[100 * (index % 9)],
// //               child: Text('grid item $index'),
// //             );
// //           },
// //           childCount: 20,
// //         ),
// //       ),
// //     );
// //   }
// // }

// /*

// https://drive.google.com/file/d//view?usp=sharing
// https://drive.google.com/uc?export=view&id=1VFqSSflyGp8YIBQQ6USmRio3c6fCHXUu

// */

// class Sample extends StatefulWidget {
//   Sample({Key key}) : super(key: key);

//   @override
//   _SampleState createState() => _SampleState();
// }

// class _SampleState extends State<Sample> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: <Widget>[
//           SliverAppBar(title: Text('Fashapp'), actions: [
//             IconButton(
//               icon: Icon(
//                 Icons.search,
//                 color: Colors.white,
//               ),
//               onPressed: () {},
//             ),
//             IconButton(
//               icon: Icon(
//                 Icons.shopping_cart,
//                 color: Colors.white,
//               ),
//               onPressed: () {},
//             ),
//             // pinned: true,
//             // expandedHeight: 210.0,
//             // flexibleSpace: FlexibleSpaceBar(
//             //  // background: MyFlexiableAppBar(),
//             // ),
//           ]),
//           SliverList(
//             delegate: SliverChildListDelegate(
//               <Widget>[
//                 Text('data'),
//                 Text('data'),
//                 Text('data'),
//                 Text('data'),
//                 Text('data'),
//                 Text('data'),
//                 Text('data'),
//                 Text('data'),
//                 Text('data'),
//                 Text('data'),
//                 Text('data'),
//                 Text('data'),
//                 Text('data'),
//                 Text('data'),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// products

// // ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, camel_case_types, non_constant_identifier_names
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// //my imported stuff

// class Products extends StatefulWidget {
//   Products({Key key}) : super(key: key);

//   @override
//   _ProductaState createState() => _ProductaState();
// }

// class _ProductaState extends State<Products> {
//   var product_list = [
//     {
//       "name": "blazer",
//       "picture": "https://i.ibb.co/DwdwyF4/blazer1.jpg",
//       "old_price": "120",
//       "price": "85",
//     },
//     {
//       "name": "red dress",
//       "picture": "https://i.ibb.co/HnqYbWT/dress1.jpg",
//       "old_price": "100",
//       "price": "50",
//     },
//     {
//       "name": "red dress sample",
//       "picture": "https://i.ibb.co/HnqYbWT/dress1.jpg",
//       "old_price": "100",
//       "price": "50",
//     }
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//         itemCount: product_list.length,
//         gridDelegate:
//             SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//         itemBuilder: (BuildContext context, int index) {
//           return Single_prod(
//             prod_name: product_list[index]['name'],
//             prod_old_price: product_list[index]['old_price'],
//             prod_picture:
//                 ('${product_list[index]["picture"]}'), //Image.network('${mydata[0]["url"]}'),
//             prod_price: product_list[index]['price'],
//           );
//         });
//   }
// }

// class Single_prod extends StatefulWidget {
//   final prod_name;
//   final prod_picture;
//   final prod_old_price;
//   final prod_price;

//   Single_prod(
//       {Key key,
//       this.prod_name,
//       this.prod_old_price,
//       this.prod_picture,
//       this.prod_price})
//       : super(key: key);

//   @override
//   _Single_prodState createState() => _Single_prodState();
// }

// class _Single_prodState extends State<Single_prod> {
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Hero(
//         tag: widget.prod_name,
//         child: Material(
//           child: InkWell(
//               onTap: () {},
//               child: GridTile(
//                   footer: Container(
//                     color: Colors.white70,
//                     child: ListTile(
//                       leading: Text(
//                         widget.prod_name,
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       ),
//                       title: Text(
//                         widget.prod_price,
//                         style: TextStyle(
//                             color: Colors.red, fontWeight: FontWeight.w800),
//                       ),
//                       subtitle: Text(
//                         widget.prod_old_price,
//                         style: TextStyle(
//                             color: Colors.black54,
//                             fontWeight: FontWeight.w800,
//                             decoration: TextDecoration.lineThrough),
//                       ),
//                     ),
//                   ),
//                   child: Image.network(widget.prod_picture,  fit: BoxFit.cover,),
                 
//                   ),
//                   ),
//         ),
//       ),
//     );
//   }
// }
