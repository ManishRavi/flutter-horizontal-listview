import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Container books(String image, String bookname, String bookauthor) {
    return Container(
      width: 150.0,
      child: Card(
        child: Wrap(
          children: <Widget>[
            Image.asset(
              image,
              height: 200.0,
            ),
            ListTile(
              title: Text(bookname),
              subtitle: Text(bookauthor),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Horizontal ListView",
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("BOOKS"),
          centerTitle: true,
        ),
        body: Container(
            margin: EdgeInsets.all(20.0),
            height: 300.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                books("images/image1.jpg", "One Indian Girl ", "Chetan Bhagat"),
                books("images/image2.jpg", "Immortals of Meluha",
                    "Amish Tripathi"),
                books("images/image3.jpg", "The Monk Who Sold His Ferrari",
                    "Robin Sharma"),
                books(
                    "images/image4.jpg", "How to Win Friends", "Dale Carnegie"),
                books("images/image5.jpg", "Rich Dad Poor Dad",
                    "Robert T. Kiyosaki"),
              ],
            )),
      ),
    );
  }
}
