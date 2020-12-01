import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:hero_drawer/api/api_service.dart';
import 'package:hero_drawer/api/model/built_all_takes.dart';
import 'package:hero_drawer/api/model/built_take.dart';
import 'package:hero_drawer/main.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class TakeList extends StatefulWidget{
  TakeList({Key key}) : super(key :key);
  @override
  _MyListState createState() => _MyListState();
}
class _MyListState extends State<TakeList>{

  RefreshController _refreshController;
  List<BuiltTake> _takelist = [];
  int _currentPage;
  double width;

  @override
  void initState() {
    _refreshController = RefreshController(
        initialRefresh: true,
        initialRefreshStatus: RefreshStatus.refreshing
    );
    _currentPage = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("TakeList"),
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
            itemCount: _takelist.length,
            itemBuilder: (BuildContext context ,int index){
              return Padding(
                padding: EdgeInsets.only(bottom: 1.0),
                child: Slidable(
                  actionPane: SlidableDrawerActionPane(),
                  actionExtentRatio: 0.25,
                  child: Card(
                    color: Colors.white,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.indigoAccent,
                        child: Text('M'),
                        foregroundColor: Colors.white,
                      ),
                      title: Text("Take By"+ _takelist[index].name +"Customer phone \n"+_takelist[index].customerPhone,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                        ),
                      ),

                      subtitle: Text("Go to "+_takelist[index].customerLocation),


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
    Response<BuiltAllTakes> response =
    await Provider.of<ApiService>(context).getAllTakes({
      "page": _currentPage
    });

    if (response.statusCode == 200) {
      setState(() {
        this._takelist = response.body.takes.toList();
        this._currentPage = 1;
        _refreshController.refreshCompleted();
      });
    } else {
      _refreshController.refreshFailed();
    }
  }

  void _onLoading(BuildContext context) async {
    Response<BuiltAllTakes> response =
    await Provider.of<ApiService>(context).getAllTakes({
      "page": _currentPage
    });

    if (response.statusCode == 200) {
      setState(() {
        this._takelist.addAll(response.body.takes);
        this._currentPage++;
        _refreshController.loadComplete();
      });
    } else {
      _refreshController.loadFailed();
    }
  }

}
void main() =>runApp(MyApp());




/* body: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(bottom: 1.0),
              child: Slidable(
                actionPane: SlidableDrawerActionPane(),
                actionExtentRatio: 0.25,
                child: Card(
                  color: Colors.white,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.indigoAccent,
                      child: Text('M'),
                      foregroundColor: Colors.white,
                    ),
                    title: Text('Mg Mg'),
                    subtitle: Text('Mandalay'),
                    trailing: IconButton(
                      icon:Icon(Icons.more_horiz),
                    ),

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
          }),*/