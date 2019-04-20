import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(title: "People Counter", home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _people = 0;
  String _infoText = "Can go In";

  void _changePeople(int delta) {
    setState(() {
      _people += delta;

      if (_people < 0) {
        _infoText = "The place is dying";
      } else if (_people <= 10) {
        _infoText = "Can go in";
      } else {
        _infoText = "Get a fuck out!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Positioned.fill(
        child: Image(
          image: AssetImage('images/restaurant.jpg'),
          fit: BoxFit.fill,
        ),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("People: $_people",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                      child: Text("+1",
                          style:
                              TextStyle(fontSize: 40.0, color: Colors.white)),
                      onPressed: () {
                        debugPrint("+1");
                        _changePeople(1);
                      })),
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                      child: Text("-1",
                          style:
                              TextStyle(fontSize: 40.0, color: Colors.white)),
                      onPressed: () {
                        debugPrint("-1");
                        _changePeople(-1);
                      })),
            ],
          ),
          Text(_infoText,
              style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 30.0))
        ],
      )
    ]);
  }
}
