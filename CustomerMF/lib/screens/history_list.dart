import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_foodybite/api/api_service.dart';
import 'package:flutter_foodybite/api/model/built_all_items.dart';
import 'package:flutter_foodybite/api/model/built_item.dart';
import 'package:flutter_foodybite/main.dart';
import 'package:flutter_foodybite/util/global.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'HistoryDetail.dart';

class HistoryList extends StatefulWidget {
  HistoryList({Key key}) : super(key: key);

  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<HistoryList> {
  RefreshController _refreshController;
  List<BuiltItem> _itemlist = [];
  int _currentPage;
  double width;

  @override
  void initState() {
    _refreshController = RefreshController(
        initialRefresh: true, initialRefreshStatus: RefreshStatus.refreshing);
    _currentPage = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appColor,
        title: Text("History"),
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
                          child: Text('M'),
                          foregroundColor: Colors.white,
                        ),
                        title: Text(
                          "Ordered By " +
                              _itemlist[index].name +
                              " receiver phone \n" +
                              _itemlist[index].receiverPhone,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        subtitle: Text(
                            "Send to " + _itemlist[index].customerLocation),
                        trailing: IconButton(
                          icon: Icon(Icons.more_horiz),
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                              return HistoryDetail();
                            }),
                          );
                        }),
                  ),
                ),
              );
            }),
      ),
    );
  }

  void _onRefresh(BuildContext context) async {
    Response<BuiltAllItems> response = await Provider.of<ApiService>(context)
        .getAllItems({"page": _currentPage});

    if (response.statusCode == 200) {
      setState(() {
        this._itemlist = response.body.items.toList();
        this._currentPage = 1;
        _refreshController.refreshCompleted();
      });
    } else {
      _refreshController.refreshFailed();
    }
  }

  void _onLoading(BuildContext context) async {
    Response<BuiltAllItems> response = await Provider.of<ApiService>(context)
        .getAllItems({"page": _currentPage});

    if (response.statusCode == 200) {
      setState(() {
        this._itemlist.addAll(response.body.items);
        this._currentPage++;
        _refreshController.loadComplete();
      });
    } else {
      _refreshController.loadFailed();
    }
  }
}

void main() => runApp(MyApp());
