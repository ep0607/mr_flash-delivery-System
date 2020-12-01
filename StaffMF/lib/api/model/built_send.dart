import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';

part 'built_send.g.dart';

abstract class BuiltSend implements Built<BuiltSend , BuiltSendBuilder>{

  int get id;
  String get content;
  @BuiltValueField(wireName: "customer_id")
  String get customerId;
  String get title;
  @BuiltValueField(wireName: "is_for_all")
  @nullable
  String get isForAll;

  BuiltSend._();

  factory BuiltSend([updates(BuiltSendBuilder b)]) = _$BuiltSend;
  static Serializer<BuiltSend> get serializer => _$builtSendSerializer;

}