import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OnweekendRecord extends FirestoreRecord {
  OnweekendRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _photo = snapshotData['photo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('onweekend');

  static Stream<OnweekendRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OnweekendRecord.fromSnapshot(s));

  static Future<OnweekendRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OnweekendRecord.fromSnapshot(s));

  static OnweekendRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OnweekendRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OnweekendRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OnweekendRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OnweekendRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OnweekendRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOnweekendRecordData({
  String? name,
  String? description,
  String? photo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'photo': photo,
    }.withoutNulls,
  );

  return firestoreData;
}

class OnweekendRecordDocumentEquality implements Equality<OnweekendRecord> {
  const OnweekendRecordDocumentEquality();

  @override
  bool equals(OnweekendRecord? e1, OnweekendRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.photo == e2?.photo;
  }

  @override
  int hash(OnweekendRecord? e) =>
      const ListEquality().hash([e?.name, e?.description, e?.photo]);

  @override
  bool isValidKey(Object? o) => o is OnweekendRecord;
}
