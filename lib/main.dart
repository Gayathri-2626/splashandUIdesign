import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splash_activity/first_screen.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5),
            () =>
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => FirstScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset('images/appstore.png', height: 80.0,),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Text('www.testing.me'),
              )
            ],
          )
        ],
      ),
    );
  }
}



