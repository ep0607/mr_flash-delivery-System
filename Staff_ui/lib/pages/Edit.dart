import 'package:flutter/material.dart';
import 'package:hero_drawer/util/global.dart';
import 'package:hero_drawer/util/global.dart' as prefix0;
import 'package:hero_drawer/util/global.dart';

import 'Invoice.dart';

class Edit extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _allInputWidgets();
}

class _allInputWidgets extends State<Edit>
{
  DateTime _date = new DateTime.now();
  final sendDate = TextEditingController();
  final sendLocation = TextEditingController();
  final destination = TextEditingController();
  final userName = TextEditingController();
  final phone = TextEditingController();
  final address = TextEditingController();
  final email = TextEditingController();
  final item = TextEditingController();
  String emailText = "";

// Function For Email Validation
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

// Alert Box
/*
  void _showAlert(String userName, String password, String email,String birthDate, String address) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Alert!"),
          content: Text("UserName: $userName, Password: $password, Email: $email, Send Date: $sendDate, Address: $address"),
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
*/

// Function of Select date for BirthDate
  Future<void> _selectDate(BuildContext context) async {
    // DatePicker
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: _date,
        firstDate: _date,
        lastDate: DateTime(2025));
    setState(() {
      _date = picked;
      sendDate.text = _date.toString().split(" ")[0];
    });

    if (picked != null && picked != _date) {
      setState(() {
        _date = picked;
        sendDate.text = _date.toString().split(" ")[0];
      });
    }
  }

//OnClick of Cancel Button

  void _clear() {

    sendDate.clear();
    sendLocation.clear();
    destination.clear();
    userName.clear();
    phone.clear();
    address.clear();
    email.clear();
    item.clear();
  }


  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: mediumText(text: "Edit"),
          backgroundColor: appColor,
        ),
        body: new ListView(children: <Widget>[
          new Padding(
            padding: new EdgeInsets.all(5),
          ),
          // Logo Image

          new Container(
              padding: new EdgeInsets.only(left: 15, right: 15),
              child: new Column(children: <Widget>[
                new Padding(
                  padding: new EdgeInsets.only(top: 20.0),
                ),
                Icon(
                  Icons.store,
                  color: prefix0.appColor,
                  size: 80.0,
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 10.0),
                ),
                new TextField(
                  controller: sendDate,
                  onTap: () {
                    _selectDate(context);
                  },
                  decoration: new InputDecoration(
                    icon: Icon(Icons.date_range, color: appColor),
                    labelText: "Send Date",
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 10.0),
                ),
                // Form For Registration
                new TextField(
                  controller: sendLocation,
                  textInputAction: TextInputAction.done,
                  decoration: new InputDecoration(
                      icon: Icon(
                        Icons.location_on,
                        color: appColor,
                      ),
                      hintText: 'Send Location',
                      labelText: 'Send Location'),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 10.0),
                ),
                new TextField(
                  controller: destination,
                  decoration: new InputDecoration(
                    icon: Icon(Icons.location_on, color: appColor),
                    hintText: "Destination",
                    labelText: "Destination",
                  ),
                ),
                new TextField(
                  controller: userName,
                  textInputAction: TextInputAction.done,
                  decoration: new InputDecoration(
                      icon: Icon(
                        Icons.person,
                        color: appColor,
                      ),
                      hintText: 'Receiver Name',
                      labelText: 'Receiver name'),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 10.0),
                ),
                new TextField(
                  controller: phone,
                  textInputAction: TextInputAction.done,
                  decoration: new InputDecoration(
                    icon: Icon(Icons.phone, color: appColor),
                    hintText: "Receiver Phone No",
                    labelText: "Receiver Phone No",
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 10.0),
                ),
                new TextField(
                  controller: email,
                  textInputAction: TextInputAction.done,
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
                  controller: item,
                  textInputAction: TextInputAction.done,
                  decoration: new InputDecoration(
                    icon: Icon(Icons.loyalty, color: appColor),
                    hintText: "Item",
                    labelText: "Item",
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 30.0),
                ),
                // Submit Button
                ButtonTheme(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0)),
                  minWidth: 100.0,
                  height: 45.0,
                  child: new Row(children: <Widget>[
                    new Padding(
                      padding: new EdgeInsets.only(right: 30.0,left: 30.0),
                    ),
                    RaisedButton(
                      child: mediumText(
                        text: "Confirm",
                        textColor: Colors.white,
                      ),
                      color: appColor,
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return Invoice();
                            },
                          ),
                        );
                      },
                    ),
                    new Padding(
                      padding: new EdgeInsets.only(right: 30.0,left: 30.0),
                    ),
                    RaisedButton(
                      child: mediumText(
                        text: "Cancel",
                        textColor: Colors.white,
                      ),
                      color: appColor,
                      onPressed: () {
                        _clear();
                      },
                    )
                  ],
                  ),
                ),
              ])),
        ]));
  }

}