import 'package:chopper/chopper.dart';
import 'package:flutter_foodybite/api/model/built_all_inboxes.dart';
import 'package:flutter_foodybite/api/model/built_all_items.dart';
import 'package:flutter_foodybite/api/built_value_converter.dart';

part 'api_service.chopper.dart';

@ChopperApi(baseUrl: "/")


abstract class ApiService extends ChopperService {
  @Get(path: "check-order")
  Future<Response<BuiltAllItems>> getAllItems(
      @Query() Map<String , dynamic> query
      );

  /*@Get(path: "get-packages")
  Future<Response<BuiltAllItems>> getAllPackage(
      @QueryMap() Map<String , dynamic> query
      );*/


  //Check again
  @Get(path: "get-inbox/{id}")
  Future<Response<BuiltAllInboxes>> getAllInBoxes(
      @Path('id') int id,
      @Query() Map<String , dynamic> query
      );


  @Get(path: "get-orderDetail/{id}")
  Future<Response<BuiltAllItems>> getAllOrderDetails(
      @Path('id') int id,
      @Query() Map<String , dynamic> query
      );


  static ApiService create(){

    //print("API Service");
    final client = ChopperClient(
      baseUrl: "https://booklist.maungmyint.me/public/api",
      services: [
        _$ApiService(),
      ],
      converter: BuiltValueConverter(),
      interceptors: [
        HttpLoggingInterceptor(),

      ]


    );
    return _$ApiService(client);
  }



}

