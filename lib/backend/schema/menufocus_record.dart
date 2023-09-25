import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MenufocusRecord extends FirestoreRecord {
  MenufocusRecord._(
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

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  void _initializeFields() {
    _photo = snapshotData['photo'] as String?;
    _price = snapshotData['price'] as String?;
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('menufocus');

  static Stream<MenufocusRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MenufocusRecord.fromSnapshot(s));

  static Future<MenufocusRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MenufocusRecord.fromSnapshot(s));

  static MenufocusRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MenufocusRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MenufocusRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MenufocusRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MenufocusRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MenufocusRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMenufocusRecordData({
  String? photo,
  String? price,
  String? name,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'photo': photo,
      'price': price,
      'name': name,
      'description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

class MenufocusRecordDocumentEquality implements Equality<MenufocusRecord> {
  const MenufocusRecordDocumentEquality();

  @override
  bool equals(MenufocusRecord? e1, MenufocusRecord? e2) {
    return e1?.photo == e2?.photo &&
        e1?.price == e2?.price &&
        e1?.name == e2?.name &&
        e1?.description == e2?.description;
  }

  @override
  int hash(MenufocusRecord? e) =>
      const ListEquality().hash([e?.photo, e?.price, e?.name, e?.description]);

  @override
  bool isValidKey(Object? o) => o is MenufocusRecord;
}
