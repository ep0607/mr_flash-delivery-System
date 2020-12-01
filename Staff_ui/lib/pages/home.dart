import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  Drawer buildDrawer(BuildContext context) {
    var header = SizedBox(
      height: 250.0,
      child: DrawerHeader(
        child: Column(
          children: <Widget>[
            Text("Staff Profile", style: TextStyle
              (fontSize: 30.0)),
            Container(
              // height: 75,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 5)),
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 0.6,
              child: ClipOval(
                child: Image(
                  fit: BoxFit.contain,
                  height: 90,

                  image: AssetImage(
                    "images/admin.png",
                  ),
                ),
              ),
            ),
            Text("Mg Mg", style: TextStyle
              (fontSize: 23.0)),
            Text("SanChaung Branch", style: TextStyle
              (fontSize: 20.0)),
          ],
        ),
      ),
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
      buildNavItem(Icons.home, "Home", "/"),
      buildNavItem(Icons.card_giftcard, "take", "/take"),
      buildNavItem(Icons.card_giftcard, "deliver", "/deliver"),
//      InkWell(
//        onTap: _simpleAlertBox,
//        child : buildNavItem(Icons.card_giftcard,"LogOut","/logout")
//      ),
    ];

    ListView listView = ListView(children: navList);

    return Drawer(child: listView);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        child: Center(
          child: Hero(
            tag: 'kangaroo',
            child: Image.asset('images/car.jpg'),
          ),
        ),
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