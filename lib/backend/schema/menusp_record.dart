import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MenuspRecord extends FirestoreRecord {
  MenuspRecord._(
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

  // "price" field.
  String? _price;
  String get price => _price ?? '';
  bool hasPrice() => _price != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _photo = snapshotData['photo'] as String?;
    _price = snapshotData['price'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('menusp');

  static Stream<MenuspRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MenuspRecord.fromSnapshot(s));

  static Future<MenuspRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MenuspRecord.fromSnapshot(s));

  static MenuspRecord fromSnapshot(DocumentSnapshot snapshot) => MenuspRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MenuspRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MenuspRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MenuspRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MenuspRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMenuspRecordData({
  String? name,
  String? photo,
  String? price,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'photo': photo,
      'price': price,
    }.withoutNulls,
  );

  return firestoreData;
}

class MenuspRecordDocumentEquality implements Equality<MenuspRecord> {
  const MenuspRecordDocumentEquality();

  @override
  bool equals(MenuspRecord? e1, MenuspRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.photo == e2?.photo &&
        e1?.price == e2?.price;
  }

  @override
  int hash(MenuspRecord? e) =>
      const ListEquality().hash([e?.name, e?.photo, e?.price]);

  @override
  bool isValidKey(Object? o) => o is MenuspRecord;
}
