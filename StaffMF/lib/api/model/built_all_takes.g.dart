// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_all_takes.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltAllTakes> _$builtAllTakesSerializer =
    new _$BuiltAllTakesSerializer();

class _$BuiltAllTakesSerializer implements StructuredSerializer<BuiltAllTakes> {
  @override
  final Iterable<Type> types = const [BuiltAllTakes, _$BuiltAllTakes];
  @override
  final String wireName = 'BuiltAllTakes';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltAllTakes object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'current_page',
      serializers.serialize(object.currentPage,
          specifiedType: const FullType(int)),
      'data',
      serializers.serialize(object.items,
          specifiedType:
              const FullType(BuiltList, const [const FullType(BuiltTake)])),
    ];

    return result;
  }

  @override
  BuiltAllTakes deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltAllTakesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'current_page':
          result.currentPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'data':
          result.items.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BuiltTake)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltAllTakes extends BuiltAllTakes {
  @override
  final int currentPage;
  @override
  final BuiltList<BuiltTake> items;

  factory _$BuiltAllTakes([void Function(BuiltAllTakesBuilder) updates]) =>
      (new BuiltAllTakesBuilder()..update(updates)).build();

  _$BuiltAllTakes._({this.currentPage, this.items}) : super._() {
    if (currentPage == null) {
      throw new BuiltValueNullFieldError('BuiltAllTakes', 'currentPage');
    }
    if (items == null) {
      throw new BuiltValueNullFieldError('BuiltAllTakes', 'items');
    }
  }

  @override
  BuiltAllTakes rebuild(void Function(BuiltAllTakesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltAllTakesBuilder toBuilder() => new BuiltAllTakesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltAllTakes &&
        currentPage == other.currentPage &&
        items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, currentPage.hashCode), items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltAllTakes')
          ..add('currentPage', currentPage)
          ..add('items', items))
        .toString();
  }
}

class BuiltAllTakesBuilder
    implements Builder<BuiltAllTakes, BuiltAllTakesBuilder> {
  _$BuiltAllTakes _$v;

  int _currentPage;
  int get currentPage => _$this._currentPage;
  set currentPage(int currentPage) => _$this._currentPage = currentPage;

  ListBuilder<BuiltTake> _items;
  ListBuilder<BuiltTake> get items =>
      _$this._items ??= new ListBuilder<BuiltTake>();
  set items(ListBuilder<BuiltTake> items) => _$this._items = items;

  BuiltAllTakesBuilder();

  BuiltAllTakesBuilder get _$this {
    if (_$v != null) {
      _currentPage = _$v.currentPage;
      _items = _$v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltAllTakes other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltAllTakes;
  }

  @override
  void update(void Function(BuiltAllTakesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltAllTakes build() {
    _$BuiltAllTakes _$result;
    try {
      _$result = _$v ??
          new _$BuiltAllTakes._(currentPage: currentPage, items: items.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltAllTakes', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
