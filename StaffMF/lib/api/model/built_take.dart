import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';

part 'built_take.g.dart';

abstract class BuiltTake implements Built<BuiltTake , BuiltTakeBuilder>{

  int get id;

  @nullable
  @BuiltValueField(wireName: "customer_id")
  @nullable
  String get customerId;
  @nullable
  @BuiltValueField(wireName: "is_for_all")
  @nullable
  String get isForAll;

  BuiltTake._();

  factory BuiltTake([updates(BuiltTakeBuilder b)]) = _$BuiltTake;
  static Serializer<BuiltTake> get serializer => _$builtTakeSerializer;

}