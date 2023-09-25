import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MenuchillRecord extends FirestoreRecord {
  MenuchillRecord._(
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

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _photo = snapshotData['photo'] as String?;
    _price = snapshotData['price'] as String?;
    _description = snapshotData['description'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('menuchill');

  static Stream<MenuchillRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MenuchillRecord.fromSnapshot(s));

  static Future<MenuchillRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MenuchillRecord.fromSnapshot(s));

  static MenuchillRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MenuchillRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MenuchillRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MenuchillRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MenuchillRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MenuchillRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMenuchillRecordData({
  String? name,
  String? photo,
  String? price,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'photo': photo,
      'price': price,
      'description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

class MenuchillRecordDocumentEquality implements Equality<MenuchillRecord> {
  const MenuchillRecordDocumentEquality();

  @override
  bool equals(MenuchillRecord? e1, MenuchillRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.photo == e2?.photo &&
        e1?.price == e2?.price &&
        e1?.description == e2?.description;
  }

  @override
  int hash(MenuchillRecord? e) =>
      const ListEquality().hash([e?.name, e?.photo, e?.price, e?.description]);

  @override
  bool isValidKey(Object? o) => o is MenuchillRecord;
}
