import 'dart:html';

import 'package:ecomassignment/profile.dart';
import 'package:ecomassignment/users.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var orientation, size, height, width;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Center(child: Text('Ecommerce')),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                onPressed: () {
                  // do something
                },
              )
            ],
          ), //AppBar
          body: SingleChildScrollView(
            child: Column(
              children: [
                product("Iphone7", "3.5 (153 Reviews)", "180 Pieces \$159",
                    "Quantity: 10", "pic3.jpg"),
                product("Iphone8", "3.9 (23 Reviews)", "20 Pieces \$90",
                    "Quantity: 5", "pic5.jpg"),
                product("Iphone9", "4.5 (18 Reviews)", "18 Pieces \$10",
                    "Quantity: 10", "pic4.jpg"),
                product("Iphone10", "4.1 (105 Reviews)", "148 Pieces \$100",
                    "Quantity: 10", "pic4.jpg"),
                product("Iphone11", "4.8 (103 Reviews)", "180 Pieces \$159",
                    "Quantity: 10", "pic3.jpg"),
                product("Iphone12", "4.9 (103 Reviews)", "180 Pieces \$159",
                    "Quantity: 10", "pic4.jpg"),
                Btn()
              ],
            ),
          )),
    );
  }
}

class Btn extends StatefulWidget {
  @override
  _BtnState createState() => _BtnState();
}

class _BtnState extends State<Btn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Row(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Users()));
              },
              child: Text("Users Review")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile()));
              },
              child: Text("Profile")),
        ],
      ),
    );
  }
}

Widget product(String title, review, pieces, quantity, picture) {
  return Row(
    children: [
      Container(
        height: 120,
        width: 120,
        margin: EdgeInsets.only(top: 20, left: 20, right: 0, bottom: 0),
        child: Text(""),
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/" + picture),
            ),
            color: Colors.black,
            borderRadius: BorderRadius.circular(10)),
      ),
      Container(
        height: 120,
        width: 200,
        margin: EdgeInsets.only(top: 20, left: 0, right: 20, bottom: 0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(title,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left),
                ),
                Row(
                  children: [
                    Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/star.jpg"),
                          ),
                        )),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(review,
                          style: TextStyle(
                            fontSize: 14.0,
                            height: 1.5,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    pieces,
                    style: TextStyle(
                      fontSize: 14.0,
                      height: 1.5,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    quantity,
                    style: TextStyle(
                      fontSize: 14.0,
                      height: 1.5,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(0, 1), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(5)),
      ),
    ],
  );
}
