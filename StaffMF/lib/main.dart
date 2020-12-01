import 'package:flutter/material.dart';
import 'package:hero_drawer/login/signin.dart';
import 'package:hero_drawer/pages/History.dart';
import 'package:hero_drawer/pages/account.dart';
import 'package:hero_drawer/pages/deliver.dart';
import 'package:hero_drawer/pages/home.dart';
import 'package:hero_drawer/pages/take.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignIn(),
      routes: <String, WidgetBuilder>{
        "/home": (BuildContext context) => Home(),
        "/take": (BuildContext context) => take(),
        "/deliver": (BuildContext context) => deliver(),
        "/history":(BuildContext context) => history(),
        "/setting":(BuildContext context) => Account(),
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
