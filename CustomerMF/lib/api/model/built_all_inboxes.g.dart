// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_all_inboxes.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltAllInboxes> _$builtAllInboxesSerializer =
    new _$BuiltAllInboxesSerializer();

class _$BuiltAllInboxesSerializer
    implements StructuredSerializer<BuiltAllInboxes> {
  @override
  final Iterable<Type> types = const [BuiltAllInboxes, _$BuiltAllInboxes];
  @override
  final String wireName = 'BuiltAllInboxes';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltAllInboxes object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'current_page',
      serializers.serialize(object.currentPage,
          specifiedType: const FullType(int)),
      'from',
      serializers.serialize(object.from, specifiedType: const FullType(int)),
      'last_page',
      serializers.serialize(object.lastPage,
          specifiedType: const FullType(int)),
      'to',
      serializers.serialize(object.to, specifiedType: const FullType(int)),
      'total',
      serializers.serialize(object.total, specifiedType: const FullType(int)),
      'data',
      serializers.serialize(object.inboxes,
          specifiedType:
              const FullType(BuiltList, const [const FullType(BuiltInbox)])),
    ];

    return result;
  }

  @override
  BuiltAllInboxes deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltAllInboxesBuilder();

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
        case 'from':
          result.from = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'last_page':
          result.lastPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'to':
          result.to = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'data':
          result.inboxes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BuiltInbox)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltAllInboxes extends BuiltAllInboxes {
  @override
  final int currentPage;
  @override
  final int from;
  @override
  final int lastPage;
  @override
  final int to;
  @override
  final int total;
  @override
  final BuiltList<BuiltInbox> inboxes;

  factory _$BuiltAllInboxes([void Function(BuiltAllInboxesBuilder) updates]) =>
      (new BuiltAllInboxesBuilder()..update(updates)).build();

  _$BuiltAllInboxes._(
      {this.currentPage,
      this.from,
      this.lastPage,
      this.to,
      this.total,
      this.inboxes})
      : super._() {
    if (currentPage == null) {
      throw new BuiltValueNullFieldError('BuiltAllInboxes', 'currentPage');
    }
    if (from == null) {
      throw new BuiltValueNullFieldError('BuiltAllInboxes', 'from');
    }
    if (lastPage == null) {
      throw new BuiltValueNullFieldError('BuiltAllInboxes', 'lastPage');
    }
    if (to == null) {
      throw new BuiltValueNullFieldError('BuiltAllInboxes', 'to');
    }
    if (total == null) {
      throw new BuiltValueNullFieldError('BuiltAllInboxes', 'total');
    }
    if (inboxes == null) {
      throw new BuiltValueNullFieldError('BuiltAllInboxes', 'inboxes');
    }
  }

  @override
  BuiltAllInboxes rebuild(void Function(BuiltAllInboxesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltAllInboxesBuilder toBuilder() =>
      new BuiltAllInboxesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltAllInboxes &&
        currentPage == other.currentPage &&
        from == other.from &&
        lastPage == other.lastPage &&
        to == other.to &&
        total == other.total &&
        inboxes == other.inboxes;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, currentPage.hashCode), from.hashCode),
                    lastPage.hashCode),
                to.hashCode),
            total.hashCode),
        inboxes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltAllInboxes')
          ..add('currentPage', currentPage)
          ..add('from', from)
          ..add('lastPage', lastPage)
          ..add('to', to)
          ..add('total', total)
          ..add('inboxes', inboxes))
        .toString();
  }
}

class BuiltAllInboxesBuilder
    implements Builder<BuiltAllInboxes, BuiltAllInboxesBuilder> {
  _$BuiltAllInboxes _$v;

  int _currentPage;
  int get currentPage => _$this._currentPage;
  set currentPage(int currentPage) => _$this._currentPage = currentPage;

  int _from;
  int get from => _$this._from;
  set from(int from) => _$this._from = from;

  int _lastPage;
  int get lastPage => _$this._lastPage;
  set lastPage(int lastPage) => _$this._lastPage = lastPage;

  int _to;
  int get to => _$this._to;
  set to(int to) => _$this._to = to;

  int _total;
  int get total => _$this._total;
  set total(int total) => _$this._total = total;

  ListBuilder<BuiltInbox> _inboxes;
  ListBuilder<BuiltInbox> get inboxes =>
      _$this._inboxes ??= new ListBuilder<BuiltInbox>();
  set inboxes(ListBuilder<BuiltInbox> inboxes) => _$this._inboxes = inboxes;

  BuiltAllInboxesBuilder();

  BuiltAllInboxesBuilder get _$this {
    if (_$v != null) {
      _currentPage = _$v.currentPage;
      _from = _$v.from;
      _lastPage = _$v.lastPage;
      _to = _$v.to;
      _total = _$v.total;
      _inboxes = _$v.inboxes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltAllInboxes other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltAllInboxes;
  }

  @override
  void update(void Function(BuiltAllInboxesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltAllInboxes build() {
    _$BuiltAllInboxes _$result;
    try {
      _$result = _$v ??
          new _$BuiltAllInboxes._(
              currentPage: currentPage,
              from: from,
              lastPage: lastPage,
              to: to,
              total: total,
              inboxes: inboxes.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'inboxes';
        inboxes.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltAllInboxes', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
