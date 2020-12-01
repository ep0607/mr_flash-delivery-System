import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:hero_drawer/pages/deliver.dart';
import 'package:hero_drawer/util/global.dart';

class Invoice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _allInputWidgets();
}

class _allInputWidgets extends State<Invoice>
{
  static final name="Mg Mg";
  static final phone=111;
  static final add="Yangon";
  static final staff="Ko Ko";
  static final weight=40;
  static final total=40000;
  static final package=0;


  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text("Confirmation"),
        actions: <Widget>[
          Container(
            width: 80,
            child: IconButton(
              icon: Text( 'Print', style: TextStyle(fontWeight: FontWeight.bold), ),
              onPressed: () {

              },
            ),
          )
        ],
      ),
      body:Column(
        //crossAxisAlignment:CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: 450.0,
            height:120.0,
            child: Text("To/ \n Receiver Name: $name \n Receiver Phone No: $phone \n Address: $add ",
              style:TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal
              ),
            ),
          ),
          Container(
            child:Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 200.0,
                  height:80.0,
                ),
                Container(
                  width: 200.0,
                  height:40.0,
                  child:Text("Shipped by $staff",
                    style:TextStyle(
                        fontSize: 20.0,
                        fontStyle: FontStyle.normal
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 70.0,
            child: Text("Invoice",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                fontSize: 40.0,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          Container(
            child:Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Container(
                  width: 200.0,
                  height:30.0,
                  padding: EdgeInsets.only(left: 30.0),
                  child:Text(
                    "Weight :",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Container(
                  width: 200.0,
                  height:30.0,
                  padding: EdgeInsets.only(left: 50.0),
                  child:Text(
                    "$weight Kg",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child:Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Container(
                  width: 200.0,
                  height:30.0,
                  padding: EdgeInsets.only(left: 30.0),
                  child:Text(
                    "Package :",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Container(
                  width: 200.0,
                  height:30.0,
                  padding: EdgeInsets.only(left: 50.0),
                  child:Text(
                    "$package package",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child:Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 200.0,
                  height:180.0,
                  padding: EdgeInsets.only(left: 30.0),
                  child:Text(
                    "Total :",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Container(
                  width: 200.0,
                  height:180.0,
                  padding: EdgeInsets.only(left: 50.0),
                  child:Text(
                    "$total Ks",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child:Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 200.0,
                  height:40.0,
                ),
                Container(
                  padding: EdgeInsets.only(left:20.0),
                  width: 200.0,
                  height:40.0,
                  child:Text("(Customer Sign)",
                    style:TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        fontStyle: FontStyle.normal
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Text(
              "(Receive above goods in full & good condition.)",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,

              ),
            ),
          ),
          Container(
            child: Text(
              "Thank You For Joining With MR.Flash",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,

              ),
            ),
          )


        ],
      ),
    );
  }
}