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

  Future<Response<BuiltAllTakes>> getAllTakes(Map<String, dynamic> query) {
    final $url = '/check-order';
    final $params = query;
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BuiltAllTakes, BuiltAllTakes>($request);
  }
}
