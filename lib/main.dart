//ignore
// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:ecom/components/product_details.dart';
import 'package:ecom/components/products.dart';
//import 'package:ecom/components/products.dart';
import 'package:ecom/pages/cart.dart';
import 'package:flutter/material.dart';

//my imported files
import 'components/1.dart';
import 'components/horizontal_listview.dart';
//import 'components/products.dart';
import 'components/test.dart';
import 'pages/cart.dart';

void main() => runApp(Home());
//  {
//   runApp(Home());
// }

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({
    Key key,
  }) : super(key: key);

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
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Cart()),
                );
              }),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            // header

            UserAccountsDrawerHeader(
              //currentAccountPicture: Icon(Icons.person),
              // currentAccountPicture: CircleAvatar(
              //   radius: 60,
              //   child: Image.network(
              //     'https://clarityskin.com/wp-content/uploads/2019/10/unknown-person-icon-22.jpg',
              //   ),
              // ),
              currentAccountPictureSize: Size.fromRadius(30),
              accountName: Text('chill bro'),
              accountEmail: Text('babushonarr@gmail.com'),

              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Colors.red),
            ),
            //body
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(
                  Icons.home,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(
                  Icons.person,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Cart()),
                );
              },
              child: ListTile(
                title: Text('Shopping Cart'),
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(
                  Icons.category,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
            ),

            Divider(),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
              ),
            ),

            InkWell(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => HomePage()),
                // );
              },
              child: ListTile(
                title: Text('About'),
                leading: Icon(
                  Icons.help,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 180,
              child: One(),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10.0, right: 270),
              child: Text(
                'Categories',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            // horizontal list view
            HorizontalList(),
            //Category(),
            Text(
              'Recent Products by vs code',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),

            //Gridview

            // Container(
            //   //constraints: BoxConstraints(maxHeight: double.infinity),
            //   //color: Colors.grey,
            //   height: 800,

            //   child: Products(),
            // ),
            SizedBox(
              width: double.infinity,
              height: 1500,
              child: Products(),
            ),
            Container(
              color: Colors.amber,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
