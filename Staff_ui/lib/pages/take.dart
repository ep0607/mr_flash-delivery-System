import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:hero_drawer/pages/Edit.dart';
import 'package:hero_drawer/pages/Invoice.dart';

class take extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Take List"),
      ),
      body: Slidable(
        actionPane: SlidableDrawerActionPane(),
        actionExtentRatio: 0.25,
        child: Container(
          color: Colors.white,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.indigoAccent,
              child: Text('1'),
              foregroundColor: Colors.white,
            ),
            title: Text('Take order',style:TextStyle
            (fontSize: 23.0)),
            subtitle: Text('Go La Thar',style:TextStyle
                (fontSize: 23.0)),
          ),
        ),
        secondaryActions: <Widget>[
          IconSlideAction(
            caption: 'Edit',
            color: Colors.yellow,
            icon: Icons.edit,
            onTap: ()  {
            Navigator.of(context).push(
            MaterialPageRoute(
            builder: (BuildContext context) {
            return Edit();
            },
            ),
            );
            },
          ),
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
  }
}
