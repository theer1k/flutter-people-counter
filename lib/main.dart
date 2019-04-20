import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      title: "People Counter",
      home: Stack(children: <Widget>[
        Positioned.fill(
          child: Image(
            image: AssetImage('images/restaurant.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Pessoas: 0",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                        child: Text("+1",
                            style:
                                TextStyle(fontSize: 40.0, color: Colors.white)),
                        onPressed: () {})),
                Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                        child: Text("-1",
                            style:
                                TextStyle(fontSize: 40.0, color: Colors.white)),
                        onPressed: () {})),
              ],
            ),
            Text("Pode Entrar!",
                style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontSize: 30.0))
          ],
        )
      ])));
}
