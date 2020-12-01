import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'built_item.dart';

part 'built_all_items.g.dart';


abstract class BuiltAllItems implements Built<BuiltAllItems , BuiltAllItemsBuilder>{

  @BuiltValueField(wireName: "current_page")
  int get currentPage;

  @BuiltValueField(wireName: "data")
  BuiltList<BuiltItem> get items;



  BuiltAllItems._();

  factory BuiltAllItems([updates(BuiltAllItemsBuilder b)]) = _$BuiltAllItems;
  static Serializer<BuiltAllItems> get serializer => _$builtAllItemsSerializer;

}