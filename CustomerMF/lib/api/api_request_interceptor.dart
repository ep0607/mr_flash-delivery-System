import 'dart:async';

import 'package:chopper/chopper.dart';

class ApiRequestInterceptor implements RequestInterceptor {
  @override
  FutureOr<Request> onRequest(Request request) {
    Map<String, dynamic> requestParameters = request.parameters;
    Map<String, String> query = {
      "api_key": "44d8c2a4e38999a5badd2c7bbd7e37c8"
    };
    requestParameters.addAll(query);
    final newRequest = request.replace(parameters: requestParameters);
    return newRequest;
  }

}