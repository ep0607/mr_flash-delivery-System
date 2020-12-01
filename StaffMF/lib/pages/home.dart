import 'package:flutter/material.dart';
import 'package:hero_drawer/util/global.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {

  Drawer buildDrawer(BuildContext context) {
    var header = SizedBox(
      height: 250.0,
      child: Container(
        color:appColor,
        child:DrawerHeader(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(bottom: 20.0),
              child:Text("Staff Profile",
                style: TextStyle(
                    fontSize: 30.0,
                  color: Colors.white,
                )),
            ),
            Container(
              width: 120.0,
              height: 120.0,
              padding: EdgeInsets.only(bottom: 20.0),
              child: CircleAvatar(
                  child: Container(
                    decoration: new BoxDecoration(
                      image: new DecorationImage(
                        image: new ExactAssetImage("images/admin.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
              ),
            ),
            Text("Mg Mg",
                style: TextStyle(
                    fontSize: 20.0,
                  color: Colors.white,
                )),
            Text("SanChaung Branch",
                style: TextStyle(
                    fontSize: 15.0,
                  color: Colors.white,
                )),
          ],
        ),
      ),),
    );
    ListTile buildNavItem(var icon, String label, String route) {
      return ListTile(
        leading: Icon(icon, size: 30.5,),
        title: Text(label),
        onTap: () {
          setState(() {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed(route);
          });
        },
      );
    }
    var navList = [
      header,
      buildNavItem(Icons.home, "Home", "/home"),
      buildNavItem(Icons.card_giftcard, "Take", "/take"),
      buildNavItem(Icons.card_giftcard, "Send", "/deliver"),
      buildNavItem(Icons.history,"History","/history"),
      buildNavItem(Icons.settings,"Setting","/setting"),

    ];
    ListView listView = ListView(children: navList);
    return Drawer(child: listView);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appColor,
        title: Text('Home'),
      ),
        body:Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/logo1.png"),
                  //fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 130.0,left: 20.0),
              child: Text(
                "\"Our Sesrvice Is Faster \n Than Your Dream\"",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Times New Roman',
                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      drawer: buildDrawer(context),
    );
  }
  Widget _simpleAlertBox() {
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


}