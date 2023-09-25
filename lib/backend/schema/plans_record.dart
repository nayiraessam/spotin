import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlansRecord extends FirestoreRecord {
  PlansRecord._(
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

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  bool hasDate() => _date != null;

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  bool hasTime() => _time != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _date = snapshotData['date'] as String?;
    _photo = snapshotData['photo'] as String?;
    _time = snapshotData['time'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('plans');

  static Stream<PlansRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PlansRecord.fromSnapshot(s));

  static Future<PlansRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PlansRecord.fromSnapshot(s));

  static PlansRecord fromSnapshot(DocumentSnapshot snapshot) => PlansRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PlansRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PlansRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PlansRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PlansRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPlansRecordData({
  String? name,
  String? description,
  String? date,
  String? photo,
  String? time,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'date': date,
      'photo': photo,
      'time': time,
    }.withoutNulls,
  );

  return firestoreData;
}

class PlansRecordDocumentEquality implements Equality<PlansRecord> {
  const PlansRecordDocumentEquality();

  @override
  bool equals(PlansRecord? e1, PlansRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.date == e2?.date &&
        e1?.photo == e2?.photo &&
        e1?.time == e2?.time;
  }

  @override
  int hash(PlansRecord? e) => const ListEquality()
      .hash([e?.name, e?.description, e?.date, e?.photo, e?.time]);

  @override
  bool isValidKey(Object? o) => o is PlansRecord;
}
