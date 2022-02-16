import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'transaction_details_record.g.dart';

abstract class TransactionDetailsRecord
    implements
        Built<TransactionDetailsRecord, TransactionDetailsRecordBuilder> {
  static Serializer<TransactionDetailsRecord> get serializer =>
      _$transactionDetailsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Amount')
  double get amount;

  @nullable
  @BuiltValueField(wireName: 'When')
  DateTime get when;

  @nullable
  @BuiltValueField(wireName: 'Branch')
  String get branch;

  @nullable
  @BuiltValueField(wireName: 'NatureofTransaction')
  String get natureofTransaction;

  @nullable
  @BuiltValueField(wireName: 'categoryOf_transaction')
  String get categoryOfTransaction;

  @nullable
  @BuiltValueField(wireName: 'TransactionState')
  bool get transactionState;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(TransactionDetailsRecordBuilder builder) =>
      builder
        ..amount = 0.0
        ..branch = ''
        ..natureofTransaction = ''
        ..categoryOfTransaction = ''
        ..transactionState = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('transaction_details');

  static Stream<TransactionDetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<TransactionDetailsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  TransactionDetailsRecord._();
  factory TransactionDetailsRecord(
          [void Function(TransactionDetailsRecordBuilder) updates]) =
      _$TransactionDetailsRecord;

  static TransactionDetailsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createTransactionDetailsRecordData({
  double amount,
  DateTime when,
  String branch,
  String natureofTransaction,
  String categoryOfTransaction,
  bool transactionState,
}) =>
    serializers.toFirestore(
        TransactionDetailsRecord.serializer,
        TransactionDetailsRecord((t) => t
          ..amount = amount
          ..when = when
          ..branch = branch
          ..natureofTransaction = natureofTransaction
          ..categoryOfTransaction = categoryOfTransaction
          ..transactionState = transactionState));
