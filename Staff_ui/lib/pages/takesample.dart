import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:hero_drawer/api/api_service.dart';
import 'package:hero_drawer/api/model/built_all_takes.dart';
import 'package:provider/provider.dart';
import 'takelist.dart';
class Inbox extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Provider(
        builder: (_) => ApiService.create(),
        dispose: (_, ApiService service) => service.dispose(),
        child: TakeList(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();

}
final page =1;

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _builtList(context),
      floatingActionButton: FloatingActionButton(
        child:Icon(Icons.add),
        onPressed: () async {
          final response = await Provider.of<ApiService>(context).getAllTakes({
            "page" :page
          });
          print(response.body);
        },
      ),
    );
  }
}

FutureBuilder<Response> _builtList(BuildContext context){

  return FutureBuilder<Response<BuiltAllTakes>>(
    future: Provider.of<ApiService>(context).getAllTakes({
      "page" :page
    }),
    builder: (context, snapshot){
      if(snapshot.connectionState == ConnectionState.done){
        if(snapshot.hasError){
          return Center(
            child: Text(
              snapshot.error.toString(),
              textAlign: TextAlign.center,
              textScaleFactor: 1.5,

            ),
          );
        }

        final items =snapshot.data.body;
        return _builtGridView(context, items);
      }else{
        return Center(
          child: CircularProgressIndicator(),
        );
      }

    },
  );


}

GridView _builtGridView(BuildContext context, BuiltAllTakes allTakes) {
  return GridView.builder(
      itemCount: allTakes.takes.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 5 / 8.5,
      ),
      itemBuilder: (context, int index) {
        return Card(
            elevation: 4.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 6.0,left: 5.0),
                  child: Text("${allTakes.takes[index].name}",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 3.0,
                    ),),
                ),
              ],
            )
        );
      }
  );
}


