import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_foodybite/login/signin.dart';
import 'package:flutter_foodybite/screens/Edit.dart';
import 'package:flutter_foodybite/util/global.dart';
import 'package:flutter_foodybite/util/global.dart' as prefix0;

class Account extends StatefulWidget {
  static String tag = 'add-page';
  @override
  _AccountPageState createState() => new _AccountPageState();
}


class _AccountPageState extends State<Account> {
  final _formKey = GlobalKey<FormState>();
  static final defaultMessage="No Information";
  static final name="Ei Phyu";
  static final email="ei@gmail.com";
  static final password="****";
  static final address="(3/39) Bogyoke Street, Yedashe";
  static final phone="09773322115";
  @override
  Widget build(BuildContext context) {

    final picture = Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 120.0,
          height: 120.0,
          child: CircleAvatar(
            backgroundColor: appColor,
            //child: Image.asset("assets/images/profile.png"),
            child: Container(
            decoration: new BoxDecoration(
              color: appColor,
              image: new DecorationImage(
                image: new ExactAssetImage("assets/images/profile.png"),
                fit: BoxFit.cover,
              ),
            ),
          )
        ),
       ),
      ],
    );

    ListView content = ListView(
      padding: EdgeInsets.all(20),
      children: <Widget>[
        SizedBox(height: 20),
        picture,
        Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Padding(
                padding: new EdgeInsets.only(top: 30.0),
              ),
              Card(
                  child:ListTile(
                  title: Text(name.toString().isNotEmpty
                  ? name
                  : defaultMessage),
                  subtitle: Text(
                      "User Name",style: TextStyle(color: Colors.black54),
                  ),
                  leading: IconButton(
                      icon: Icon(Icons.person, color: appColor), ), ),),

              Card(
               /* shape: RoundedRectangleBorder(
                    side: new BorderSide(color: prefix0.appColor, width: 2.0),
                    borderRadius: BorderRadius.circular(20.0)
                ),*/
                child:ListTile(
                  title: Text(password.toString().isNotEmpty
                      ? password
                      : defaultMessage),
                  subtitle: Text(
                    "Password",style: TextStyle(color: Colors.black54),
                  ),
                  leading: IconButton(
                    icon: Icon(Icons.lock, color: appColor), ), ),),

              Card(
                /* shape: RoundedRectangleBorder(
                    side: new BorderSide(color: prefix0.appColor, width: 2.0),
                    borderRadius: BorderRadius.circular(20.0)
                ),*/
                child:ListTile(
                  title: Text(phone.toString().isNotEmpty
                      ? phone
                      : defaultMessage),
                  subtitle: Text(
                    "Phone",style: TextStyle(color: Colors.black54),
                  ),
                  leading: IconButton(
                    icon: Icon(Icons.phone, color: appColor), ), ),),


              Card(
               /* shape: RoundedRectangleBorder(
                    side: new BorderSide(color: prefix0.appColor, width: 2.0),
                    borderRadius: BorderRadius.circular(20.0)
                ),*/
                child:ListTile(
                  title: Text(email.toString().isNotEmpty
                      ? email
                      : defaultMessage),
                  subtitle: Text(
                    "Email",style: TextStyle(color: Colors.black54),
                  ),
                  leading: IconButton(
                    icon: Icon(Icons.email, color: appColor), ), ),),

              Card(
                /* shape: RoundedRectangleBorder(
                    side: new BorderSide(color: prefix0.appColor, width: 2.0),
                    borderRadius: BorderRadius.circular(20.0)
                ),*/
                child:ListTile(
                  title: Text(address.toString().isNotEmpty
                      ? address
                      : defaultMessage),
                  subtitle: Text(
                    "Address",style: TextStyle(color: Colors.black54),
                  ),
                  leading: IconButton(
                    icon: Icon(Icons.home, color: appColor), ), ),),

              Padding(
                padding: new EdgeInsets.only(top: 15.0),
              ),
              ButtonTheme(
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(50.0)),
                minWidth: 350.0,
                height: 50.0,
                child: RaisedButton(
                  child: mediumText(
                    text: "Logout",
                    textColor: Colors.white,
                  ),
                  color: appColor,
                  onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: mediumText(text: "Log Out"),
                            content: lightText(
                                text: "Are you sure you want to log out"),
                            actions: <Widget>[
                              new FlatButton(
                                child: mediumText(
                                  text: "Ok",
                                  textColor: appColor,
                                ),
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (BuildContext context){return SignIn();}
                                    ),
                                  );
                                },
                              ),
                            ],
                          ));

                  },
                ),
              ),


            ],
            ),
            ),
            ],
          );


    return Scaffold(
      appBar: AppBar(
        backgroundColor: appColor,
        title: Text("My Account"),
        leading: IconButton(
          icon: Icon(Icons.close),
          color: prefix0.appColor,
          onPressed: () {},
        ),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom:10.0),
            width: 80,
            child: IconButton(
              color: Colors.white,
              icon: Icon(Icons.edit),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Edit()),
                );
              },
            ),
          )
        ],
      ),
      body: content,
    );
  }
}
