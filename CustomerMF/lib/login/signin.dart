import 'package:flutter/material.dart';
import 'package:flutter_foodybite/Color_Class/color.dart';
import 'package:flutter_foodybite/login/signup.dart';
import 'package:flutter_foodybite/screens/main_screen.dart';
import 'package:flutter_foodybite/util/global.dart';
import 'package:flutter_foodybite/util/global.dart' as prefix0;


class SignIn extends StatefulWidget {
  @override
  _backColorLogin createState() => new _backColorLogin();
}

class _backColorLogin extends State<SignIn> {
  final userName = TextEditingController();
  final password = TextEditingController();

 void _submit() {
    if(userName.text=="Ei Phyu"&& password.text=="1234")
      {
        Navigator.of(context).push(
            MaterialPageRoute(
            builder: (BuildContext context){return MainScreen();}
          ),
        );
      }
    }

  Widget build(BuildContext context) {
    return  Scaffold(
      body:ListView(
        children: <Widget>[
          Card(
              margin: new EdgeInsets.only(left: 35.0, right: 35.0, top: 120.0, bottom: 120.0),
              shape: RoundedRectangleBorder(
                  side: new BorderSide(color: prefix0.appColor, width: 2.0),
                  borderRadius: BorderRadius.circular(10.0)
              ),
              child:Container(
                padding: EdgeInsets.only(left: 15.0,right: 15.0),
              child: Column(

                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // Login Form
                    Icon(
                      Icons.person,
                      color: prefix0.appColor,
                      size: 150.0,
                    ),
                    new Padding(
                      padding: new EdgeInsets.only(top: 50.0),
                    ),
                    new TextField(
                      controller: userName,
                      decoration: new InputDecoration(
                        icon: Icon(Icons.person, color: appColor,),
                        hintText: "Username",
                        labelText: "Username",
                      ),
                    ),
                    new Padding(
                      padding: new EdgeInsets.only(top: 10.0),
                    ),
                    new TextField(
                      obscureText: true,
                      controller: password,
                      decoration: new InputDecoration(
                        icon: Icon(Icons.lock, color: appColor,),
                        hintText: "Password",
                        labelText: "Password",
                      ),
                    ),
                    new Padding(
                      padding: new EdgeInsets.only(top: 30.0),
                    ),
                    // Submit Button
                    ButtonTheme(
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(50.0)),
                      minWidth: 200.0,
                      height: 50.0,
                      child: RaisedButton(
                        child: mediumText(
                          text: "Sign In",
                          textColor: Colors.white,
                        ),
                        color: appColor,
                        onPressed: () {
                          _submit();
                        },
                      ),
                    ),
                   /* new Padding(
                      padding: new EdgeInsets.only(top: 10.0),
                    ),
                    //Facebook and Google Button
                    new Container(
                        child: new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new Container(
                                child: FlatButton(
                                  onPressed: () {},
                                  child: Text("SignIn with FaceBook",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color:MyColor.mypurple,
                                  ),
                                ),
                                ),
                              ),
                              new Padding(
                                padding: new EdgeInsets.symmetric(horizontal: 5.0),
                              ),
                              new Container(
                                child: FlatButton(
                                  onPressed: () {},
                                  child: Text("SignIn with Google",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color:MyColor.mypurple,
                                    ),
                                  ),
                                ),
                              ),
                            ])),*/
                     Padding(
                      padding: new EdgeInsets.only(top: 10.0),
                    ),

                    FlatButton(
                      child: Text(
                        "Register your account",
                        style: TextStyle(
                        fontSize: 17,
                        color:MyColor.mypurple,
                        ),
                      ),
                      onPressed: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context){
                              return SignUp();
                            },
                          ),
                        );
                      },
                    ),
                  ]
              )
              )
          ),
        ]
      )
    );
  }
}
