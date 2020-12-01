import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';

part 'built_item.g.dart';

abstract class BuiltItem implements Built<BuiltItem , BuiltItemBuilder>{

  int get id;
  String get name;
  @BuiltValueField(wireName: "customer_lat")
  String get customerLat;
  @BuiltValueField(wireName: "customer_long")
  String get customerLong;
  @BuiltValueField(wireName: "customer_location")
  String get customerLocation;
  @BuiltValueField(wireName: "receive_lat")
  String get receiverLat;
  @BuiltValueField(wireName: "receive_long")
  String get receiverLong;
  @BuiltValueField(wireName: "receiver_location")
  String get receiverLocation;
  @BuiltValueField(wireName: "receiver_name")
  String get receiverName;
  @BuiltValueField(wireName: "receiver_phone")
  String get receiverPhone;
  @BuiltValueField(wireName: "is_post_paid")
  String get isPostPaid;
  @BuiltValueField(wireName: "package_id")
  @nullable
  String get packageId;
  @BuiltValueField(wireName: "weight_id")
  String get weightId;
  @BuiltValueField(wireName: "custom_weight")
  String get currentWeight;
  @BuiltValueField(wireName: "branch_id")
  String get branchId;

  BuiltItem._();

  factory BuiltItem([updates(BuiltItemBuilder b)]) = _$BuiltItem;
  static Serializer<BuiltItem> get serializer => _$builtItemSerializer;

}