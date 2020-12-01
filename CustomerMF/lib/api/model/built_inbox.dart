import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';

part 'built_inbox.g.dart';

abstract class BuiltInbox implements Built<BuiltInbox , BuiltInboxBuilder>{

  int get id;
  String get content;
  @BuiltValueField(wireName: "customer_id")
  @nullable
  String get customerId;

  String get title;
  @BuiltValueField(wireName: "is_for_all")
  @nullable
  String get isForAll;

  BuiltInbox._();

  factory BuiltInbox([updates(BuiltInboxBuilder b)]) = _$BuiltInbox;
  static Serializer<BuiltInbox> get serializer => _$builtInboxSerializer;

}