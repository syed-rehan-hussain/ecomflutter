import 'package:flutter/material.dart';

class Users extends StatefulWidget {
  @override
  _UsersState createState() => _UsersState();
}

class _UsersState extends State<Users> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter a search term'),
              ),
            ),
            Text("History",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.left),
            listile("pic3.jpg", "Iphone12", "5.0 (23 Review)", "10\$"),
            listile("pic4.jpg", "Iphone11", "4.5 (230 Review)", "15\$"),
            listile("background.jpg", "Iphone11", "4.5 (230 Review)", "15\$"),
            listile("pic3.jpg", "Iphone12", "5.0 (23 Review)", "10\$"),
            listile("pic4.jpg", "Iphone11", "4.5 (230 Review)", "15\$"),
            listile("background.jpg", "Iphone11", "4.5 (230 Review)", "15\$"),
            listile("pic3.jpg", "Iphone12", "5.0 (23 Review)", "10\$"),
            listile("pic4.jpg", "Iphone11", "4.5 (230 Review)", "15\$"),
            listile("background.jpg", "Iphone11", "4.5 (230 Review)", "15\$"),
            listile("pic3.jpg", "Iphone12", "5.0 (23 Review)", "10\$"),
            listile("pic4.jpg", "Iphone11", "4.5 (230 Review)", "15\$"),
            listile("background.jpg", "Iphone11", "4.5 (230 Review)", "15\$"),
          ],
        ),
      ),
    );
  }
}

Widget listile(String picture, title, review, price) {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: AssetImage("assets/" + picture),
      radius: 20,
    ),
    title: Text(
      title,
      style: TextStyle(
        fontSize: 18.0,
        color: Colors.black,
        fontWeight: FontWeight.w700,
      ),
    ),
    subtitle: Row(
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
        Text(review)
      ],
    ),
    trailing: Text(price),
  );
}
