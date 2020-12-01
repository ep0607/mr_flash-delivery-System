// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_take.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltTake> _$builtTakeSerializer = new _$BuiltTakeSerializer();

class _$BuiltTakeSerializer implements StructuredSerializer<BuiltTake> {
  @override
  final Iterable<Type> types = const [BuiltTake, _$BuiltTake];
  @override
  final String wireName = 'BuiltTake';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltTake object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    if (object.customerId != null) {
      result
        ..add('customer_id')
        ..add(serializers.serialize(object.customerId,
            specifiedType: const FullType(String)));
    }
    if (object.isForAll != null) {
      result
        ..add('is_for_all')
        ..add(serializers.serialize(object.isForAll,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BuiltTake deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltTakeBuilder();

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
        case 'customer_id':
          result.customerId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_for_all':
          result.isForAll = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltTake extends BuiltTake {
  @override
  final int id;
  @override
  final String customerId;
  @override
  final String isForAll;

  factory _$BuiltTake([void Function(BuiltTakeBuilder) updates]) =>
      (new BuiltTakeBuilder()..update(updates)).build();

  _$BuiltTake._({this.id, this.customerId, this.isForAll}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('BuiltTake', 'id');
    }
  }

  @override
  BuiltTake rebuild(void Function(BuiltTakeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltTakeBuilder toBuilder() => new BuiltTakeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltTake &&
        id == other.id &&
        customerId == other.customerId &&
        isForAll == other.isForAll;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, id.hashCode), customerId.hashCode), isForAll.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltTake')
          ..add('id', id)
          ..add('customerId', customerId)
          ..add('isForAll', isForAll))
        .toString();
  }
}

class BuiltTakeBuilder implements Builder<BuiltTake, BuiltTakeBuilder> {
  _$BuiltTake _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _customerId;
  String get customerId => _$this._customerId;
  set customerId(String customerId) => _$this._customerId = customerId;

  String _isForAll;
  String get isForAll => _$this._isForAll;
  set isForAll(String isForAll) => _$this._isForAll = isForAll;

  BuiltTakeBuilder();

  BuiltTakeBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _customerId = _$v.customerId;
      _isForAll = _$v.isForAll;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltTake other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltTake;
  }

  @override
  void update(void Function(BuiltTakeBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltTake build() {
    final _$result = _$v ??
        new _$BuiltTake._(id: id, customerId: customerId, isForAll: isForAll);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
