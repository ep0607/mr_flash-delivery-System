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
      'content',
      serializers.serialize(object.content,
          specifiedType: const FullType(String)),
      'staff_id',
      serializers.serialize(object.customerId,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
    ];
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
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'staff_id':
          result.customerId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
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
  final String content;
  @override
  final String customerId;
  @override
  final String title;
  @override
  final String isForAll;

  factory _$BuiltTake([void Function(BuiltTakeBuilder) updates]) =>
      (new BuiltTakeBuilder()..update(updates)).build();

  _$BuiltTake._(
      {this.id, this.content, this.customerId, this.title, this.isForAll})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('BuiltTake', 'id');
    }
    if (content == null) {
      throw new BuiltValueNullFieldError('BuiltTake', 'content');
    }
    if (customerId == null) {
      throw new BuiltValueNullFieldError('BuiltTake', 'customerId');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('BuiltTake', 'title');
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
        content == other.content &&
        customerId == other.customerId &&
        title == other.title &&
        isForAll == other.isForAll;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, id.hashCode), content.hashCode),
                customerId.hashCode),
            title.hashCode),
        isForAll.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltTake')
          ..add('id', id)
          ..add('content', content)
          ..add('customerId', customerId)
          ..add('title', title)
          ..add('isForAll', isForAll))
        .toString();
  }
}

class BuiltTakeBuilder implements Builder<BuiltTake, BuiltTakeBuilder> {
  _$BuiltTake _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _content;
  String get content => _$this._content;
  set content(String content) => _$this._content = content;

  String _customerId;
  String get customerId => _$this._customerId;
  set customerId(String customerId) => _$this._customerId = customerId;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _isForAll;
  String get isForAll => _$this._isForAll;
  set isForAll(String isForAll) => _$this._isForAll = isForAll;

  BuiltTakeBuilder();

  BuiltTakeBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _content = _$v.content;
      _customerId = _$v.customerId;
      _title = _$v.title;
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
        new _$BuiltTake._(
            id: id,
            content: content,
            customerId: customerId,
            title: title,
            isForAll: isForAll);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
