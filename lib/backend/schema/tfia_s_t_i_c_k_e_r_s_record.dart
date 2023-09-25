import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TfiaSTICKERSRecord extends FirestoreRecord {
  TfiaSTICKERSRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  // "price" field.
  String? _price;
  String get price => _price ?? '';
  bool hasPrice() => _price != null;

  void _initializeFields() {
    _photo = snapshotData['photo'] as String?;
    _price = snapshotData['price'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tfiaSTICKERS');

  static Stream<TfiaSTICKERSRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TfiaSTICKERSRecord.fromSnapshot(s));

  static Future<TfiaSTICKERSRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TfiaSTICKERSRecord.fromSnapshot(s));

  static TfiaSTICKERSRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TfiaSTICKERSRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TfiaSTICKERSRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TfiaSTICKERSRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TfiaSTICKERSRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TfiaSTICKERSRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTfiaSTICKERSRecordData({
  String? photo,
  String? price,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'photo': photo,
      'price': price,
    }.withoutNulls,
  );

  return firestoreData;
}

class TfiaSTICKERSRecordDocumentEquality
    implements Equality<TfiaSTICKERSRecord> {
  const TfiaSTICKERSRecordDocumentEquality();

  @override
  bool equals(TfiaSTICKERSRecord? e1, TfiaSTICKERSRecord? e2) {
    return e1?.photo == e2?.photo && e1?.price == e2?.price;
  }

  @override
  int hash(TfiaSTICKERSRecord? e) =>
      const ListEquality().hash([e?.photo, e?.price]);

  @override
  bool isValidKey(Object? o) => o is TfiaSTICKERSRecord;
}
