import 'package:flutter/material.dart';
import 'package:flutter_foodybite/Color_Class/color.dart';
import 'package:flutter_foodybite/screens/home.dart';
import 'package:flutter_foodybite/util/global.dart';
import 'account.dart';
import 'deliver.dart';
import 'history.dart';
import 'inbox.dart';
class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PageController _pageController;
  int _page = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: onPageChanged,
        children: <Widget>[
          Home(),
          Inbox(),
          Deliver(),
          History(),
          Account(),
        ],
      ),

      bottomNavigationBar: BottomAppBar(
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width:7),
            IconButton(
              icon: Icon(
                Icons.home,
                size: 24.0,
              ),
              color: MyColor.mywhite,
              hoverColor: MyColor.mywhite,
              splashColor: MyColor.mygrey,
              disabledColor: MyColor.myblue,
              onPressed: ()=>_pageController.jumpToPage(0),
            ),

            IconButton(
              icon:Icon(
                Icons.message,
                size: 24.0,
              ),
              color: MyColor.mywhite,
              hoverColor: MyColor.mywhite,
              splashColor: MyColor.mygrey,
              disabledColor: MyColor.mygrey,
              onPressed: ()=>_pageController.jumpToPage(1),
            ),

            IconButton(
              icon: Icon(
                Icons.add,
                size: 24.0,
              ),
              color: MyColor.mywhite,
              hoverColor: MyColor.mywhite,
              splashColor: MyColor.mygrey,
              disabledColor: MyColor.mygrey,
              onPressed: ()=>_pageController.jumpToPage(2),
            ),

            IconButton(
              icon: Icon(
                Icons.notifications,
                size: 24.0,
              ),
              color: MyColor.mywhite,
              hoverColor: MyColor.mywhite,
              splashColor: MyColor.mygrey,
              disabledColor: MyColor.mygrey,
              onPressed: ()=>_pageController.jumpToPage(3),
            ),

            IconButton(
              icon: Icon(
                Icons.person,
                size: 24.0,
              ),
              color: MyColor.mywhite,
              hoverColor: MyColor.mywhite,
              splashColor: MyColor.mygrey,
              disabledColor: MyColor.mygrey,
              onPressed: ()=>_pageController.jumpToPage(4),
            ),
            SizedBox(width:7),
          ],
        ),
        color: appColor,
        shape: CircularNotchedRectangle(),

      ),

      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: appColor,
        elevation: 10.0,
        child: Icon(
            Icons.add,
            color:MyColor.mywhite
        ),
        onPressed: ()=>_pageController.jumpToPage(2),
      ),

    );
  }

  void navigationTapped(int page) {
    _pageController.jumpToPage(page);
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }
}
