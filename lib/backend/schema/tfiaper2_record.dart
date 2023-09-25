import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Tfiaper2Record extends FirestoreRecord {
  Tfiaper2Record._(
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
      FirebaseFirestore.instance.collection('tfiaper2');

  static Stream<Tfiaper2Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Tfiaper2Record.fromSnapshot(s));

  static Future<Tfiaper2Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Tfiaper2Record.fromSnapshot(s));

  static Tfiaper2Record fromSnapshot(DocumentSnapshot snapshot) =>
      Tfiaper2Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Tfiaper2Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Tfiaper2Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Tfiaper2Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Tfiaper2Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTfiaper2RecordData({
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

class Tfiaper2RecordDocumentEquality implements Equality<Tfiaper2Record> {
  const Tfiaper2RecordDocumentEquality();

  @override
  bool equals(Tfiaper2Record? e1, Tfiaper2Record? e2) {
    return e1?.photo == e2?.photo && e1?.price == e2?.price;
  }

  @override
  int hash(Tfiaper2Record? e) =>
      const ListEquality().hash([e?.photo, e?.price]);

  @override
  bool isValidKey(Object? o) => o is Tfiaper2Record;
}
