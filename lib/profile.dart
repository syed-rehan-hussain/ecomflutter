import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
              Row(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    margin:
                        EdgeInsets.only(top: 20, left: 20, right: 0, bottom: 0),
                    child: Text(""),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/profile.png"),
                      ),
                      //color: Colors.black,
                      //  borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 200,
                    margin:
                        EdgeInsets.only(top: 20, left: 0, right: 20, bottom: 0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            Text("User",
                                style: TextStyle(
                                  fontSize: 24.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.left),
                            Text("Abc@gmail.com",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  height: 1.5,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.left),
                            Text(
                              "Logout",
                              style: TextStyle(
                                fontSize: 14.0,
                                height: 1.5,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        // color: Colors.white,
                        // boxShadow: [], borderRadius: BorderRadius.circular(5)
                        ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 15, top: 15),
                child: Text("ACCOUNT INFORMATION",
                    style: TextStyle(
                      fontSize: 18.0,
                      height: 1.5,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left),
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 15, top: 15),
                    child: Text("Full Name",
                        style: TextStyle(
                          fontSize: 18.0,
                          height: 1.5,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 15),
                    child: Text(
                      "User",
                      style: TextStyle(
                        fontSize: 18.0,
                        height: 1.5,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 15, top: 15),
                    child: Text("Email",
                        style: TextStyle(
                          fontSize: 18.0,
                          height: 1.5,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 15),
                    child: Text(
                      "Email@gmail.com",
                      style: TextStyle(
                        fontSize: 18.0,
                        height: 1.5,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 15, top: 15),
                    child: Text("Phone",
                        style: TextStyle(
                          fontSize: 18.0,
                          height: 1.5,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 15),
                    child: Text(
                      "03122117652",
                      style: TextStyle(
                        fontSize: 18.0,
                        height: 1.5,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 15, top: 15),
                    child: Text("Address",
                        style: TextStyle(
                          fontSize: 18.0,
                          height: 1.5,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 15),
                    child: Text(
                      "House A276 pia society",
                      style: TextStyle(
                        fontSize: 18.0,
                        height: 1.5,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 15, top: 15),
                    child: Text("Gender",
                        style: TextStyle(
                          fontSize: 18.0,
                          height: 1.5,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 15),
                    child: Text(
                      "Male",
                      style: TextStyle(
                        fontSize: 18.0,
                        height: 1.5,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 15, top: 15),
                    child: Text("Date Of Birth",
                        style: TextStyle(
                          fontSize: 18.0,
                          height: 1.5,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 15),
                    child: Text(
                      "11-oct-1997",
                      style: TextStyle(
                        fontSize: 18.0,
                        height: 1.5,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
