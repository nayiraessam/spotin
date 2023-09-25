import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MenufreshRecord extends FirestoreRecord {
  MenufreshRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "price" field.
  String? _price;
  String get price => _price ?? '';
  bool hasPrice() => _price != null;

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
    _price = snapshotData['price'] as String?;
    _description = snapshotData['description'] as String?;
    _photo = snapshotData['photo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('menufresh');

  static Stream<MenufreshRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MenufreshRecord.fromSnapshot(s));

  static Future<MenufreshRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MenufreshRecord.fromSnapshot(s));

  static MenufreshRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MenufreshRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MenufreshRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MenufreshRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MenufreshRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MenufreshRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMenufreshRecordData({
  String? name,
  String? price,
  String? description,
  String? photo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'price': price,
      'description': description,
      'photo': photo,
    }.withoutNulls,
  );

  return firestoreData;
}

class MenufreshRecordDocumentEquality implements Equality<MenufreshRecord> {
  const MenufreshRecordDocumentEquality();

  @override
  bool equals(MenufreshRecord? e1, MenufreshRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.price == e2?.price &&
        e1?.description == e2?.description &&
        e1?.photo == e2?.photo;
  }

  @override
  int hash(MenufreshRecord? e) =>
      const ListEquality().hash([e?.name, e?.price, e?.description, e?.photo]);

  @override
  bool isValidKey(Object? o) => o is MenufreshRecord;
}
