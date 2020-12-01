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

  Future<Response<BuiltAllItems>> getAllItems(Map<String, dynamic> query) {
    final $url = '/check-order';
    final Map<String, dynamic> $params = {'query': query};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BuiltAllItems, BuiltAllItems>($request);
  }

  Future<Response<BuiltAllInboxes>> getAllInBoxes(
      int id, Map<String, dynamic> query) {
    final $url = '/get-inbox/$id';
    final Map<String, dynamic> $params = {'query': query};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BuiltAllInboxes, BuiltAllInboxes>($request);
  }

  Future<Response<BuiltAllItems>> getAllOrderDetails(
      int id, Map<String, dynamic> query) {
    final $url = '/get-orderDetail/$id';
    final Map<String, dynamic> $params = {'query': query};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BuiltAllItems, BuiltAllItems>($request);
  }
}
