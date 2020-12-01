import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';


part 'built_all_sends.g.dart';


abstract class BuiltAllSends implements Built<BuiltAllSends, BuiltAllSendsBuilder>{

  @BuiltValueField(wireName: "current_page")
  int get currentPage;

  @BuiltValueField(wireName: "data")
  BuiltList<BuiltAllSends> get sends;


  BuiltAllSends._();

  factory BuiltAllSends([updates(BuiltAllSendsBuilder b)]) = _$BuiltAllSends;
  static Serializer<BuiltAllSends> get serializer => _$builtAllSendsSerializer;


}
