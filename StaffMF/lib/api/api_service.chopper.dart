// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$ApiService extends ApiService {
  _$ApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = ApiService;

  Future<Response<BuiltAllTakes>> getAllItems(Map<String, dynamic> query) {
    final $url = '/get-take-deli-assi';
    final $params = query;
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BuiltAllTakes, BuiltAllTakes>($request);
  }

  Future<Response<BuiltAllSends>> getAllSends(Map<String, dynamic> query) {
    final $url = '/get-send-deli-assi';
    final $params = query;
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BuiltAllSends, BuiltAllSends>($request);
  }
}
