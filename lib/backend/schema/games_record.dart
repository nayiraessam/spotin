import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GamesRecord extends FirestoreRecord {
  GamesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "howtoplay" field.
  String? _howtoplay;
  String get howtoplay => _howtoplay ?? '';
  bool hasHowtoplay() => _howtoplay != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _photo = snapshotData['photo'] as String?;
    _description = snapshotData['description'] as String?;
    _howtoplay = snapshotData['howtoplay'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('games');

  static Stream<GamesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GamesRecord.fromSnapshot(s));

  static Future<GamesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GamesRecord.fromSnapshot(s));

  static GamesRecord fromSnapshot(DocumentSnapshot snapshot) => GamesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GamesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GamesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GamesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GamesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGamesRecordData({
  String? name,
  String? photo,
  String? description,
  String? howtoplay,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'photo': photo,
      'description': description,
      'howtoplay': howtoplay,
    }.withoutNulls,
  );

  return firestoreData;
}

class GamesRecordDocumentEquality implements Equality<GamesRecord> {
  const GamesRecordDocumentEquality();

  @override
  bool equals(GamesRecord? e1, GamesRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.photo == e2?.photo &&
        e1?.description == e2?.description &&
        e1?.howtoplay == e2?.howtoplay;
  }

  @override
  int hash(GamesRecord? e) => const ListEquality()
      .hash([e?.name, e?.photo, e?.description, e?.howtoplay]);

  @override
  bool isValidKey(Object? o) => o is GamesRecord;
}
