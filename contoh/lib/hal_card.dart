import 'package:flutter/material.dart';

class Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
        child: Column(
          children: <Widget>[
            new Image.asset(
              "images/ts.png",
              width: 420.0,
            ),
            Padding(padding: new EdgeInsets.all(5.0)),
            Column(
              children: <Widget>[
                Text(
                  "Sheriff Woody Pride, atau hanya Woody, adalah karakter fiksi dalam franchise Toy Story. Dia adalah seorang karakter boneka koboi yang mengarah mainan lainnya dalam petualangan di film.",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontFamily: "serif",
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}