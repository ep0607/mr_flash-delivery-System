import 'package:flutter/material.dart';
import 'package:flutter_foodybite/util/const.dart';
import 'package:flutter_foodybite/util/global.dart';
import 'package:flutter_foodybite/util/restaurants.dart';
import 'package:flutter_foodybite/widgets/trending_item.dart';

class Trending extends StatefulWidget {
  @override
  _TrendingState createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
  final TextEditingController _searchControl = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appColor,
        elevation: 0.0,
        title: Text("Mr-Flash Delivery Service"),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios
          ),
          onPressed: ()=>Navigator.pop(context),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(10.0,0,10.0,0),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 10.0),

            ListView.builder(
              primary: false,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: restaurants == null ? 0 :restaurants.length,
              itemBuilder: (BuildContext context, int index) {
                Map restaurant = restaurants[index];

                return TrendingItem(
                  img: restaurant["img"],
                  title: restaurant["title"],
                  address: restaurant["address"],
                  rating: restaurant["rating"],
                );
              },
            ),

            SizedBox(height: 10.0),

          ],
        ),
      ),
    );
  }
}
