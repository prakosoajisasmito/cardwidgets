import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff27ae60),
        appBar: AppBar(
          title: Text("Card Widgets"),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff16a085), Color(0xff16a085)],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
              ),
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              buildCard(Icons.account_circle, "Prakso Aji Sasmito"),
              buildCard(Icons.email, "prakosoaji93@student.untan.ac.id"),
              buildCard(Icons.add_call, "089668950173"),
              buildCard(Icons.add_location, "JL MT Haryono KM 4 Sintang"),
            ],
          ),
        ),
      ),
    );
  }

  Card buildCard(IconData iconData, String text) {
    return Card(
      elevation: 5,
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(9),
            child: Icon(iconData),
          ),
          Text(text)
        ],
      ),
    );
  }
}
