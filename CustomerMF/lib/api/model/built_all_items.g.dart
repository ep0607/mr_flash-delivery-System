// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_all_items.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltAllItems> _$builtAllItemsSerializer =
    new _$BuiltAllItemsSerializer();

class _$BuiltAllItemsSerializer implements StructuredSerializer<BuiltAllItems> {
  @override
  final Iterable<Type> types = const [BuiltAllItems, _$BuiltAllItems];
  @override
  final String wireName = 'BuiltAllItems';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltAllItems object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'current_page',
      serializers.serialize(object.currentPage,
          specifiedType: const FullType(int)),
      'data',
      serializers.serialize(object.items,
          specifiedType:
              const FullType(BuiltList, const [const FullType(BuiltItem)])),
    ];

    return result;
  }

  @override
  BuiltAllItems deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltAllItemsBuilder();

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
                      BuiltList, const [const FullType(BuiltItem)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltAllItems extends BuiltAllItems {
  @override
  final int currentPage;
  @override
  final BuiltList<BuiltItem> items;

  factory _$BuiltAllItems([void Function(BuiltAllItemsBuilder) updates]) =>
      (new BuiltAllItemsBuilder()..update(updates)).build();

  _$BuiltAllItems._({this.currentPage, this.items}) : super._() {
    if (currentPage == null) {
      throw new BuiltValueNullFieldError('BuiltAllItems', 'currentPage');
    }
    if (items == null) {
      throw new BuiltValueNullFieldError('BuiltAllItems', 'items');
    }
  }

  @override
  BuiltAllItems rebuild(void Function(BuiltAllItemsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltAllItemsBuilder toBuilder() => new BuiltAllItemsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltAllItems &&
        currentPage == other.currentPage &&
        items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, currentPage.hashCode), items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltAllItems')
          ..add('currentPage', currentPage)
          ..add('items', items))
        .toString();
  }
}

class BuiltAllItemsBuilder
    implements Builder<BuiltAllItems, BuiltAllItemsBuilder> {
  _$BuiltAllItems _$v;

  int _currentPage;
  int get currentPage => _$this._currentPage;
  set currentPage(int currentPage) => _$this._currentPage = currentPage;

  ListBuilder<BuiltItem> _items;
  ListBuilder<BuiltItem> get items =>
      _$this._items ??= new ListBuilder<BuiltItem>();
  set items(ListBuilder<BuiltItem> items) => _$this._items = items;

  BuiltAllItemsBuilder();

  BuiltAllItemsBuilder get _$this {
    if (_$v != null) {
      _currentPage = _$v.currentPage;
      _items = _$v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltAllItems other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltAllItems;
  }

  @override
  void update(void Function(BuiltAllItemsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltAllItems build() {
    _$BuiltAllItems _$result;
    try {
      _$result = _$v ??
          new _$BuiltAllItems._(currentPage: currentPage, items: items.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltAllItems', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
