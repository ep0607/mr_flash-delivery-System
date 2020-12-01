import 'package:flutter/material.dart';
import 'package:hero_drawer/pages/deliver.dart';
import 'package:hero_drawer/pages/home.dart';
import 'package:hero_drawer/pages/take.dart';
//import 'package:hero_drawer/pages/logout.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      routes: <String, WidgetBuilder>{
        "/take": (BuildContext context) => take(),
        "/deliver": (BuildContext context) => deliver(),
//        "/logout":(BuildContext context) => logout(context),
      },
    );
  }
}

logout(context) {
  showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Alert!"),
        content: Text("SOmething"),
        actions: <Widget>[
          new FlatButton(
            child: Text("Ok"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ));
}
