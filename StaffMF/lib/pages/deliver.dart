
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:hero_drawer/pages/Edit.dart';
import 'package:hero_drawer/pages/send_category.dart';
import 'package:hero_drawer/util/global.dart';
import 'Invoice.dart';

class deliver extends StatefulWidget {
  @override
  HomeState createState() => HomeState( );
}

class HomeState extends State<deliver> {


  Drawer buildDrawer(BuildContext context) {
    var header = SizedBox(
      height: 250.0,
      child: Container(
        color: appColor,
        child: DrawerHeader(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only( bottom: 20.0 ),
                child: Text( "Staff Profile",
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                    ) ),
              ),
              Container(
                width: 120.0,
                height: 120.0,
                padding: EdgeInsets.only( bottom: 20.0 ),
                child: CircleAvatar(
                    child: Container(
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: new ExactAssetImage( "images/admin.png" ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                ),
              ),
              Text( "Mg Mg",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ) ),
              Text( "SanChaung Branch",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                  ) ),
            ],
          ),
        ), ),
    );
    ListTile buildNavItem(var icon, String label, String route) {
      return ListTile(
        leading: Icon( icon, size: 30.5, ),
        title: Text( label ),
        onTap: () {
          setState( () {
            Navigator.of( context ).pop( );
            Navigator.of( context ).pushNamed( route );
          } );
        },
      );
    }
    var navList = [
      header,
      buildNavItem( Icons.home, "Home", "/home" ),
      buildNavItem( Icons.card_giftcard, "take", "/take" ),
      buildNavItem( Icons.card_giftcard, "Send", "/deliver" ),
      buildNavItem( Icons.history, "History", "/history" ),
      buildNavItem( Icons.settings, "Setting", "/setting" )
    ];
    ListView listView = ListView( children: navList );
    return Drawer( child: listView );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:appColor,
        title: Text("Send List"),
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          sCategory _itemlist = categories[index];
          return Padding(
            padding: EdgeInsets.only(bottom: 1.0),
            child: Slidable(
              actionPane: SlidableDrawerActionPane(),
              actionExtentRatio: 0.25,
              child: Card(
                color: Colors.white,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: appColor,
                    child: Text('A'),
                    foregroundColor: Colors.white,
                  ),
                  title: Text(_itemlist.title ,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  subtitle: Text( _itemlist.subtitle),
                ),
              ),

              secondaryActions: <Widget>[
                IconSlideAction(
                  caption: 'Confirm',
                  color: Colors.green,
                  icon: Icons.confirmation_number,
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return Invoice();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
      drawer: buildDrawer(context),

    );
  }
}


