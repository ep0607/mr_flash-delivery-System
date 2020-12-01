import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'built_inbox.dart';

part 'built_all_inboxes.g.dart';


abstract class BuiltAllInboxes implements Built<BuiltAllInboxes, BuiltAllInboxesBuilder>{

  @BuiltValueField(wireName: "current_page")
  int get currentPage;
  int get from;
  @BuiltValueField(wireName: "last_page")
  int get lastPage;
  int get to;
  int get total;

  @BuiltValueField(wireName: "data")
  BuiltList<BuiltInbox> get inboxes;



  BuiltAllInboxes._();

  factory BuiltAllInboxes([updates(BuiltAllInboxesBuilder b)]) = _$BuiltAllInboxes;
  static Serializer<BuiltAllInboxes> get serializer => _$builtAllInboxesSerializer;

}