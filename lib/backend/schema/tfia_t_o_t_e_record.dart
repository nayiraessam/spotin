import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TfiaTOTERecord extends FirestoreRecord {
  TfiaTOTERecord._(
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
      FirebaseFirestore.instance.collection('tfiaTOTE');

  static Stream<TfiaTOTERecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TfiaTOTERecord.fromSnapshot(s));

  static Future<TfiaTOTERecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TfiaTOTERecord.fromSnapshot(s));

  static TfiaTOTERecord fromSnapshot(DocumentSnapshot snapshot) =>
      TfiaTOTERecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TfiaTOTERecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TfiaTOTERecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TfiaTOTERecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TfiaTOTERecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTfiaTOTERecordData({
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

class TfiaTOTERecordDocumentEquality implements Equality<TfiaTOTERecord> {
  const TfiaTOTERecordDocumentEquality();

  @override
  bool equals(TfiaTOTERecord? e1, TfiaTOTERecord? e2) {
    return e1?.photo == e2?.photo && e1?.price == e2?.price;
  }

  @override
  int hash(TfiaTOTERecord? e) =>
      const ListEquality().hash([e?.photo, e?.price]);

  @override
  bool isValidKey(Object? o) => o is TfiaTOTERecord;
}
