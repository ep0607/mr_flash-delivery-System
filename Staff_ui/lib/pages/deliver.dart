import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'Invoice.dart';

class deliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("deliver List"),
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
            title: Text('Send Order',style:TextStyle
              (fontSize: 23.0)),
            subtitle: Text('Go to Mahar Myaing',style:TextStyle
              (fontSize: 23.0)),
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
  }
}
