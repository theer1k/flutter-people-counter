import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      title: "People Counter",
      home: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Pessoas: 0",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          Text("Pode Entrar!",
              style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 30.0))
        ],
      )));
}
