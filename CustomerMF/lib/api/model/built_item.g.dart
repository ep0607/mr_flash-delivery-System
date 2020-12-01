// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltItem> _$builtItemSerializer = new _$BuiltItemSerializer();

class _$BuiltItemSerializer implements StructuredSerializer<BuiltItem> {
  @override
  final Iterable<Type> types = const [BuiltItem, _$BuiltItem];
  @override
  final String wireName = 'BuiltItem';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'customer_lat',
      serializers.serialize(object.customerLat,
          specifiedType: const FullType(String)),
      'customer_long',
      serializers.serialize(object.customerLong,
          specifiedType: const FullType(String)),
      'customer_location',
      serializers.serialize(object.customerLocation,
          specifiedType: const FullType(String)),
      'receive_lat',
      serializers.serialize(object.receiverLat,
          specifiedType: const FullType(String)),
      'receive_long',
      serializers.serialize(object.receiverLong,
          specifiedType: const FullType(String)),
      'receiver_location',
      serializers.serialize(object.receiverLocation,
          specifiedType: const FullType(String)),
      'receiver_name',
      serializers.serialize(object.receiverName,
          specifiedType: const FullType(String)),
      'receiver_phone',
      serializers.serialize(object.receiverPhone,
          specifiedType: const FullType(String)),
      'is_post_paid',
      serializers.serialize(object.isPostPaid,
          specifiedType: const FullType(String)),
      'weight_id',
      serializers.serialize(object.weightId,
          specifiedType: const FullType(String)),
      'custom_weight',
      serializers.serialize(object.currentWeight,
          specifiedType: const FullType(String)),
      'branch_id',
      serializers.serialize(object.branchId,
          specifiedType: const FullType(String)),
    ];
    if (object.packageId != null) {
      result
        ..add('package_id')
        ..add(serializers.serialize(object.packageId,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BuiltItem deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'customer_lat':
          result.customerLat = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'customer_long':
          result.customerLong = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'customer_location':
          result.customerLocation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'receive_lat':
          result.receiverLat = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'receive_long':
          result.receiverLong = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'receiver_location':
          result.receiverLocation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'receiver_name':
          result.receiverName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'receiver_phone':
          result.receiverPhone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_post_paid':
          result.isPostPaid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'package_id':
          result.packageId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'weight_id':
          result.weightId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'custom_weight':
          result.currentWeight = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'branch_id':
          result.branchId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltItem extends BuiltItem {
  @override
  final int id;
  @override
  final String name;
  @override
  final String customerLat;
  @override
  final String customerLong;
  @override
  final String customerLocation;
  @override
  final String receiverLat;
  @override
  final String receiverLong;
  @override
  final String receiverLocation;
  @override
  final String receiverName;
  @override
  final String receiverPhone;
  @override
  final String isPostPaid;
  @override
  final String packageId;
  @override
  final String weightId;
  @override
  final String currentWeight;
  @override
  final String branchId;

  factory _$BuiltItem([void Function(BuiltItemBuilder) updates]) =>
      (new BuiltItemBuilder()..update(updates)).build();

  _$BuiltItem._(
      {this.id,
      this.name,
      this.customerLat,
      this.customerLong,
      this.customerLocation,
      this.receiverLat,
      this.receiverLong,
      this.receiverLocation,
      this.receiverName,
      this.receiverPhone,
      this.isPostPaid,
      this.packageId,
      this.weightId,
      this.currentWeight,
      this.branchId})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('BuiltItem', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('BuiltItem', 'name');
    }
    if (customerLat == null) {
      throw new BuiltValueNullFieldError('BuiltItem', 'customerLat');
    }
    if (customerLong == null) {
      throw new BuiltValueNullFieldError('BuiltItem', 'customerLong');
    }
    if (customerLocation == null) {
      throw new BuiltValueNullFieldError('BuiltItem', 'customerLocation');
    }
    if (receiverLat == null) {
      throw new BuiltValueNullFieldError('BuiltItem', 'receiverLat');
    }
    if (receiverLong == null) {
      throw new BuiltValueNullFieldError('BuiltItem', 'receiverLong');
    }
    if (receiverLocation == null) {
      throw new BuiltValueNullFieldError('BuiltItem', 'receiverLocation');
    }
    if (receiverName == null) {
      throw new BuiltValueNullFieldError('BuiltItem', 'receiverName');
    }
    if (receiverPhone == null) {
      throw new BuiltValueNullFieldError('BuiltItem', 'receiverPhone');
    }
    if (isPostPaid == null) {
      throw new BuiltValueNullFieldError('BuiltItem', 'isPostPaid');
    }
    if (weightId == null) {
      throw new BuiltValueNullFieldError('BuiltItem', 'weightId');
    }
    if (currentWeight == null) {
      throw new BuiltValueNullFieldError('BuiltItem', 'currentWeight');
    }
    if (branchId == null) {
      throw new BuiltValueNullFieldError('BuiltItem', 'branchId');
    }
  }

  @override
  BuiltItem rebuild(void Function(BuiltItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltItemBuilder toBuilder() => new BuiltItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltItem &&
        id == other.id &&
        name == other.name &&
        customerLat == other.customerLat &&
        customerLong == other.customerLong &&
        customerLocation == other.customerLocation &&
        receiverLat == other.receiverLat &&
        receiverLong == other.receiverLong &&
        receiverLocation == other.receiverLocation &&
        receiverName == other.receiverName &&
        receiverPhone == other.receiverPhone &&
        isPostPaid == other.isPostPaid &&
        packageId == other.packageId &&
        weightId == other.weightId &&
        currentWeight == other.currentWeight &&
        branchId == other.branchId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc($jc(0, id.hashCode),
                                                            name.hashCode),
                                                        customerLat.hashCode),
                                                    customerLong.hashCode),
                                                customerLocation.hashCode),
                                            receiverLat.hashCode),
                                        receiverLong.hashCode),
                                    receiverLocation.hashCode),
                                receiverName.hashCode),
                            receiverPhone.hashCode),
                        isPostPaid.hashCode),
                    packageId.hashCode),
                weightId.hashCode),
            currentWeight.hashCode),
        branchId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltItem')
          ..add('id', id)
          ..add('name', name)
          ..add('customerLat', customerLat)
          ..add('customerLong', customerLong)
          ..add('customerLocation', customerLocation)
          ..add('receiverLat', receiverLat)
          ..add('receiverLong', receiverLong)
          ..add('receiverLocation', receiverLocation)
          ..add('receiverName', receiverName)
          ..add('receiverPhone', receiverPhone)
          ..add('isPostPaid', isPostPaid)
          ..add('packageId', packageId)
          ..add('weightId', weightId)
          ..add('currentWeight', currentWeight)
          ..add('branchId', branchId))
        .toString();
  }
}

class BuiltItemBuilder implements Builder<BuiltItem, BuiltItemBuilder> {
  _$BuiltItem _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _customerLat;
  String get customerLat => _$this._customerLat;
  set customerLat(String customerLat) => _$this._customerLat = customerLat;

  String _customerLong;
  String get customerLong => _$this._customerLong;
  set customerLong(String customerLong) => _$this._customerLong = customerLong;

  String _customerLocation;
  String get customerLocation => _$this._customerLocation;
  set customerLocation(String customerLocation) =>
      _$this._customerLocation = customerLocation;

  String _receiverLat;
  String get receiverLat => _$this._receiverLat;
  set receiverLat(String receiverLat) => _$this._receiverLat = receiverLat;

  String _receiverLong;
  String get receiverLong => _$this._receiverLong;
  set receiverLong(String receiverLong) => _$this._receiverLong = receiverLong;

  String _receiverLocation;
  String get receiverLocation => _$this._receiverLocation;
  set receiverLocation(String receiverLocation) =>
      _$this._receiverLocation = receiverLocation;

  String _receiverName;
  String get receiverName => _$this._receiverName;
  set receiverName(String receiverName) => _$this._receiverName = receiverName;

  String _receiverPhone;
  String get receiverPhone => _$this._receiverPhone;
  set receiverPhone(String receiverPhone) =>
      _$this._receiverPhone = receiverPhone;

  String _isPostPaid;
  String get isPostPaid => _$this._isPostPaid;
  set isPostPaid(String isPostPaid) => _$this._isPostPaid = isPostPaid;

  String _packageId;
  String get packageId => _$this._packageId;
  set packageId(String packageId) => _$this._packageId = packageId;

  String _weightId;
  String get weightId => _$this._weightId;
  set weightId(String weightId) => _$this._weightId = weightId;

  String _currentWeight;
  String get currentWeight => _$this._currentWeight;
  set currentWeight(String currentWeight) =>
      _$this._currentWeight = currentWeight;

  String _branchId;
  String get branchId => _$this._branchId;
  set branchId(String branchId) => _$this._branchId = branchId;

  BuiltItemBuilder();

  BuiltItemBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _customerLat = _$v.customerLat;
      _customerLong = _$v.customerLong;
      _customerLocation = _$v.customerLocation;
      _receiverLat = _$v.receiverLat;
      _receiverLong = _$v.receiverLong;
      _receiverLocation = _$v.receiverLocation;
      _receiverName = _$v.receiverName;
      _receiverPhone = _$v.receiverPhone;
      _isPostPaid = _$v.isPostPaid;
      _packageId = _$v.packageId;
      _weightId = _$v.weightId;
      _currentWeight = _$v.currentWeight;
      _branchId = _$v.branchId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltItem other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltItem;
  }

  @override
  void update(void Function(BuiltItemBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltItem build() {
    final _$result = _$v ??
        new _$BuiltItem._(
            id: id,
            name: name,
            customerLat: customerLat,
            customerLong: customerLong,
            customerLocation: customerLocation,
            receiverLat: receiverLat,
            receiverLong: receiverLong,
            receiverLocation: receiverLocation,
            receiverName: receiverName,
            receiverPhone: receiverPhone,
            isPostPaid: isPostPaid,
            packageId: packageId,
            weightId: weightId,
            currentWeight: currentWeight,
            branchId: branchId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
