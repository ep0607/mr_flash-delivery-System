import 'package:flutter/material.dart';
import 'package:flutter_foodybite/util/global.dart';


class HistoryDetail extends StatelessWidget {
  static final String ItemName = "Phone";
  static final String Price = "3000 Ks";
  static final String CusLocation = "(3/39) Bogyoke Street, Yedashe";
  static final String RecLocation = "Yangon";
  static final String StaffName = "Mg Mg";
  static final String Branch = "Yedashe Branch";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
        backgroundColor: appColor,
      ),
      body: Container(
        //child: Text("My name is Ei Phyu")
          child: Text(
                "Item Name : $ItemName \n"
                "Price : $Price\n"
                "Customer Location : $CusLocation \n"
                "Receiver Location : $RecLocation \n"
                "Staff Name ; $StaffName \n"
                "Branch name : $Branch \n",

            style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
          ),
      ),

    ));
  }
}
