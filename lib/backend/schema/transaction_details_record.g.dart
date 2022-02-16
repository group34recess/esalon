// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_details_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TransactionDetailsRecord> _$transactionDetailsRecordSerializer =
    new _$TransactionDetailsRecordSerializer();

class _$TransactionDetailsRecordSerializer
    implements StructuredSerializer<TransactionDetailsRecord> {
  @override
  final Iterable<Type> types = const [
    TransactionDetailsRecord,
    _$TransactionDetailsRecord
  ];
  @override
  final String wireName = 'TransactionDetailsRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, TransactionDetailsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.amount;
    if (value != null) {
      result
        ..add('Amount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.when;
    if (value != null) {
      result
        ..add('When')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.branch;
    if (value != null) {
      result
        ..add('Branch')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.natureofTransaction;
    if (value != null) {
      result
        ..add('NatureofTransaction')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.categoryOfTransaction;
    if (value != null) {
      result
        ..add('categoryOf_transaction')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.transactionState;
    if (value != null) {
      result
        ..add('TransactionState')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  TransactionDetailsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TransactionDetailsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'Amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'When':
          result.when = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'Branch':
          result.branch = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'NatureofTransaction':
          result.natureofTransaction = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'categoryOf_transaction':
          result.categoryOfTransaction = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'TransactionState':
          result.transactionState = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$TransactionDetailsRecord extends TransactionDetailsRecord {
  @override
  final double amount;
  @override
  final DateTime when;
  @override
  final String branch;
  @override
  final String natureofTransaction;
  @override
  final String categoryOfTransaction;
  @override
  final bool transactionState;
  @override
  final DocumentReference<Object> reference;

  factory _$TransactionDetailsRecord(
          [void Function(TransactionDetailsRecordBuilder) updates]) =>
      (new TransactionDetailsRecordBuilder()..update(updates)).build();

  _$TransactionDetailsRecord._(
      {this.amount,
      this.when,
      this.branch,
      this.natureofTransaction,
      this.categoryOfTransaction,
      this.transactionState,
      this.reference})
      : super._();

  @override
  TransactionDetailsRecord rebuild(
          void Function(TransactionDetailsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionDetailsRecordBuilder toBuilder() =>
      new TransactionDetailsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactionDetailsRecord &&
        amount == other.amount &&
        when == other.when &&
        branch == other.branch &&
        natureofTransaction == other.natureofTransaction &&
        categoryOfTransaction == other.categoryOfTransaction &&
        transactionState == other.transactionState &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, amount.hashCode), when.hashCode),
                        branch.hashCode),
                    natureofTransaction.hashCode),
                categoryOfTransaction.hashCode),
            transactionState.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TransactionDetailsRecord')
          ..add('amount', amount)
          ..add('when', when)
          ..add('branch', branch)
          ..add('natureofTransaction', natureofTransaction)
          ..add('categoryOfTransaction', categoryOfTransaction)
          ..add('transactionState', transactionState)
          ..add('reference', reference))
        .toString();
  }
}

class TransactionDetailsRecordBuilder
    implements
        Builder<TransactionDetailsRecord, TransactionDetailsRecordBuilder> {
  _$TransactionDetailsRecord _$v;

  double _amount;
  double get amount => _$this._amount;
  set amount(double amount) => _$this._amount = amount;

  DateTime _when;
  DateTime get when => _$this._when;
  set when(DateTime when) => _$this._when = when;

  String _branch;
  String get branch => _$this._branch;
  set branch(String branch) => _$this._branch = branch;

  String _natureofTransaction;
  String get natureofTransaction => _$this._natureofTransaction;
  set natureofTransaction(String natureofTransaction) =>
      _$this._natureofTransaction = natureofTransaction;

  String _categoryOfTransaction;
  String get categoryOfTransaction => _$this._categoryOfTransaction;
  set categoryOfTransaction(String categoryOfTransaction) =>
      _$this._categoryOfTransaction = categoryOfTransaction;

  bool _transactionState;
  bool get transactionState => _$this._transactionState;
  set transactionState(bool transactionState) =>
      _$this._transactionState = transactionState;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  TransactionDetailsRecordBuilder() {
    TransactionDetailsRecord._initializeBuilder(this);
  }

  TransactionDetailsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _amount = $v.amount;
      _when = $v.when;
      _branch = $v.branch;
      _natureofTransaction = $v.natureofTransaction;
      _categoryOfTransaction = $v.categoryOfTransaction;
      _transactionState = $v.transactionState;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransactionDetailsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransactionDetailsRecord;
  }

  @override
  void update(void Function(TransactionDetailsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TransactionDetailsRecord build() {
    final _$result = _$v ??
        new _$TransactionDetailsRecord._(
            amount: amount,
            when: when,
            branch: branch,
            natureofTransaction: natureofTransaction,
            categoryOfTransaction: categoryOfTransaction,
            transactionState: transactionState,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
