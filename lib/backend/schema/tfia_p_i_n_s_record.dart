import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TfiaPINSRecord extends FirestoreRecord {
  TfiaPINSRecord._(
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
      FirebaseFirestore.instance.collection('tfiaPINS');

  static Stream<TfiaPINSRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TfiaPINSRecord.fromSnapshot(s));

  static Future<TfiaPINSRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TfiaPINSRecord.fromSnapshot(s));

  static TfiaPINSRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TfiaPINSRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TfiaPINSRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TfiaPINSRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TfiaPINSRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TfiaPINSRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTfiaPINSRecordData({
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

class TfiaPINSRecordDocumentEquality implements Equality<TfiaPINSRecord> {
  const TfiaPINSRecordDocumentEquality();

  @override
  bool equals(TfiaPINSRecord? e1, TfiaPINSRecord? e2) {
    return e1?.photo == e2?.photo && e1?.price == e2?.price;
  }

  @override
  int hash(TfiaPINSRecord? e) =>
      const ListEquality().hash([e?.photo, e?.price]);

  @override
  bool isValidKey(Object? o) => o is TfiaPINSRecord;
}
