import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_foodybite/api/api_service.dart';
import 'package:flutter_foodybite/api/model/built_all_inboxes.dart';
import 'package:flutter_foodybite/api/model/built_inbox.dart';
import 'package:flutter_foodybite/main.dart';
import 'package:flutter_foodybite/util/global.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class InboxList extends StatefulWidget{
  InboxList({Key key}) : super(key :key);
  @override
  _MyListState createState() => _MyListState();
}
class _MyListState extends State<InboxList>{

  RefreshController _refreshController;
  List<BuiltInbox> _itemlist = [];
  int _currentPage;
  int _userid;
  double width;

  @override
  void initState() {
    _refreshController = RefreshController(
        initialRefresh: true,
        initialRefreshStatus: RefreshStatus.refreshing
    );
    _currentPage = 1;
    _userid=3;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        backgroundColor: appColor,
        title: Text("Inbox"),
      ),
      body: SmartRefresher(
        enablePullDown: true,
        enablePullUp: true,
        header: ClassicHeader(),
        footer: ClassicFooter(),
        physics: BouncingScrollPhysics(),
        controller: _refreshController,
        onRefresh: () => _onRefresh(context),
        onLoading: () => _onLoading(context),

        child: ListView.builder(
            itemCount: _itemlist.length,
            itemBuilder: (BuildContext context, int index) {
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
                      title: Text(_itemlist[index].title ,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      subtitle: Text( _itemlist[index].content),
                      //isThreeLine: true,
                    ),
                  ),


                  secondaryActions: <Widget>[
                    IconSlideAction(
                      caption: 'Delete',
                      color: Colors.red,
                      icon: Icons.delete,
                      // onTap: () async => await dao.deleteTask(item.task),,
                    ),
                  ],
                ),
              );
            }
        ),
      ),
    );

  }

  Future myLongTimePress(BuildContext context , int index){
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
        );
      },
    );
  }



  void _onRefresh(BuildContext context) async {
    Response<BuiltAllInboxes> response =
    await Provider.of<ApiService>(context).getAllInBoxes(_userid,{
      "page": _currentPage
    });

    if (response.statusCode == 200) {
      setState(() {
        this._itemlist = response.body.inboxes.toList();
        this._currentPage = 1;
        _refreshController.refreshCompleted();
      });
    } else {
      _refreshController.refreshFailed();
    }
  }

  void _onLoading(BuildContext context) async {
    Response<BuiltAllInboxes> response =
    await Provider.of<ApiService>(context).getAllInBoxes(_userid,{
      "page": _currentPage
    });

    if (response.statusCode == 200) {
      setState(() {
        this._itemlist.addAll(response.body.inboxes);
        this._currentPage++;
        _refreshController.loadComplete();
      });
    } else {
      _refreshController.loadFailed();
    }
  }

}
void main() =>runApp(MyApp());

