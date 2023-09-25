import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CoursesRecord extends FirestoreRecord {
  CoursesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  // "attending" field.
  List<DocumentReference>? _attending;
  List<DocumentReference> get attending => _attending ?? const [];
  bool hasAttending() => _attending != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _description = snapshotData['description'] as String?;
    _photo = snapshotData['photo'] as String?;
    _attending = getDataList(snapshotData['attending']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('courses');

  static Stream<CoursesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CoursesRecord.fromSnapshot(s));

  static Future<CoursesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CoursesRecord.fromSnapshot(s));

  static CoursesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CoursesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CoursesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CoursesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CoursesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CoursesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCoursesRecordData({
  String? name,
  DateTime? date,
  String? description,
  String? photo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'date': date,
      'description': description,
      'photo': photo,
    }.withoutNulls,
  );

  return firestoreData;
}

class CoursesRecordDocumentEquality implements Equality<CoursesRecord> {
  const CoursesRecordDocumentEquality();

  @override
  bool equals(CoursesRecord? e1, CoursesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.date == e2?.date &&
        e1?.description == e2?.description &&
        e1?.photo == e2?.photo &&
        listEquality.equals(e1?.attending, e2?.attending);
  }

  @override
  int hash(CoursesRecord? e) => const ListEquality()
      .hash([e?.name, e?.date, e?.description, e?.photo, e?.attending]);

  @override
  bool isValidKey(Object? o) => o is CoursesRecord;
}
