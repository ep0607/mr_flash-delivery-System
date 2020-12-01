import 'package:flutter/material.dart';
import 'package:flutter_foodybite/Color_Class/color.dart';
import 'package:flutter_foodybite/Text%20Class/text.dart';
import 'package:flutter_foodybite/screens/main_screen.dart';
import 'package:flutter_foodybite/util/global.dart';
import 'package:flutter_foodybite/util/global.dart' as prefix0;


class SignUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _backImageRegi();
}

class _backImageRegi extends State<SignUp> {

  DateTime _date = new DateTime.now();
  final userName = TextEditingController();
  final password = TextEditingController();
  final con_password = TextEditingController();
  final email = TextEditingController();
  final phone = TextEditingController();
  final address = TextEditingController();
  String emailText = "";

// Alert Box
  void _showAlert(String myalert) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: mediumText(text: "Sign Up"),
          content: lightText(
              text: "Registration complete!"),
          actions: <Widget>[
            new FlatButton(
              child: mediumText(
                text: "Ok",
                textColor: appColor,
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (BuildContext context){return MainScreen();}
                  ),
                );
              },
            ),
          ],
        ));
  }

// Fuction For Email Validation
  String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value)) {
      setState(() {
        emailText = "Enter Valid Email";
      });
    } else {
      setState(() {
        emailText = "";
      });
    }
  }

// Function of Select date for BirthDate
  /*Future<void> _selectDate(BuildContext context) async {
    //Date Picker
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: _date,
        firstDate: DateTime(1980),
        lastDate: DateTime.now());
    setState(() {
      _date = picked;
      birthDate.text = _date.toString().split(" ")[0];
    });
    if (picked != null && picked != _date) {
      setState(() {
        _date = picked;
        birthDate.text = _date.toString().split(" ")[0];
      });
    }
  }*/

// OnClick of Submit Button
  void _submit() {
    _showAlert(MyText.myalert);
  }

  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          backgroundColor: appColor,
          title: mediumText( text:"Register your information"),

        ),
        body: new ListView(children: <Widget>[
          new Container(
              padding: new EdgeInsets.only(left: 15, right: 15),
              child: new Column(children: <Widget>[
                Icon(
                  Icons.supervised_user_circle,
                  color: prefix0.appColor,
                  size: 150.0,
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 10.0),
                ),
                new TextField(
                  controller: userName,
                  textInputAction: TextInputAction.done,
                  decoration: new InputDecoration(
                      icon: Icon(
                        Icons.person,
                        color: appColor,
                      ),
                      hintText: 'Username',
                      labelText: 'username'),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 10.0),
                ),
                new TextField(
                  obscureText: true,
                  controller: password,
                  decoration: new InputDecoration(
                    icon: Icon(Icons.lock, color: appColor),
                    hintText: "Password",
                    labelText: "Password",
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 10.0),
                ),
                new TextField(
                  obscureText: true,
                  controller: con_password,
                  decoration: new InputDecoration(
                    icon: Icon(Icons.lock, color: appColor),
                    hintText: "Confirm Password",
                    labelText: "Confirm Password",
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 10.0),
                ),
                new TextField(
                  controller: phone,
                  textInputAction: TextInputAction.done,
                  decoration: new InputDecoration(
                      icon: Icon(
                        Icons.phone,
                        color: appColor,
                      ),
                      hintText: 'Phone No.',
                      labelText: 'Phone No.'),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 10.0),
                ),
                new TextField(
                  controller: email,
                  onChanged: (value) {
                    validateEmail(value);
                  },
                  decoration: new InputDecoration(
                      icon: Icon(Icons.email, color: appColor),
                      hintText: "Email",
                      labelText: "Email",
                      helperText: emailText),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 10.0),
                ),
                new TextField(
                  controller: address,
                  decoration: new InputDecoration(
                    icon: Icon(Icons.home, color: appColor),
                    hintText: "Address",
                    labelText: "Address",
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 30.0),
                ),
                // Submit Button
                ButtonTheme(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  minWidth: 300.0,
                  height: 50.0,
                  child: RaisedButton(
                    child: mediumText(
                      text: "Sign Up",
                      textColor: Colors.white,
                    ),
                    color: appColor,
                    onPressed: () {
                      _submit();
                    },
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 30.0),
                ),
              ]
              )
          ),
        ]
        )
    );
  }
}
