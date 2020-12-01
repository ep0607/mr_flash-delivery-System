import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';

part 'built_take.g.dart';

abstract class BuiltTake implements Built<BuiltTake , BuiltTakeBuilder>{

  int get id;
  String get content;
  @BuiltValueField(wireName: "staff_id")
  String get customerId;
  String get title;
  @BuiltValueField(wireName: "is_for_all")
  @nullable
  String get isForAll;

  BuiltTake._();

  factory BuiltTake([updates(BuiltTakeBuilder b)]) = _$BuiltTake;
  static Serializer<BuiltTake> get serializer => _$builtTakeSerializer;

}