import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'built_take.dart';

part 'built_all_takes.g.dart';


abstract class BuiltAllTakes implements Built<BuiltAllTakes, BuiltAllTakesBuilder>{

  @BuiltValueField(wireName: "current_page")
  int get currentPage;

  @BuiltValueField(wireName: "data")
  BuiltList<BuiltTake> get items;



  BuiltAllTakes._();

  factory BuiltAllTakes([updates(BuiltAllTakesBuilder b)]) = _$BuiltAllTakes;
  static Serializer<BuiltAllTakes> get serializer => _$builtAllTakesSerializer;

}


