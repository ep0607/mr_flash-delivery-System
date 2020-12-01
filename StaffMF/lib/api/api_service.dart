import 'package:chopper/chopper.dart';
import 'package:hero_drawer/api/model/built_all_sends.dart';
import 'package:hero_drawer/api/model/built_all_takes.dart';

import 'model/built_value_converter.dart';


part 'api_service.chopper.dart';

@ChopperApi(baseUrl: "/")


abstract class ApiService extends ChopperService {
  @Get(path: "get-take-deli-assi")
  Future<Response<BuiltAllTakes>> getAllItems(
      @QueryMap() Map<String , dynamic> query
      );

  @Get(path: "get-send-deli-assi")
  Future<Response<BuiltAllSends>> getAllSends(
      @QueryMap() Map<String , dynamic> query
      );

  static ApiService create(){
    print("API Service");
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

