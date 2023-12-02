import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class DoctorRecord extends FirestoreRecord {
  DoctorRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('doctor')
          : FirebaseFirestore.instance.collectionGroup('doctor');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('doctor').doc();

  static Stream<DoctorRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DoctorRecord.fromSnapshot(s));

  static Future<DoctorRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DoctorRecord.fromSnapshot(s));

  static DoctorRecord fromSnapshot(DocumentSnapshot snapshot) => DoctorRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DoctorRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DoctorRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DoctorRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DoctorRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDoctorRecordData({
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class DoctorRecordDocumentEquality implements Equality<DoctorRecord> {
  const DoctorRecordDocumentEquality();

  @override
  bool equals(DoctorRecord? e1, DoctorRecord? e2) {
    return e1?.name == e2?.name;
  }

  @override
  int hash(DoctorRecord? e) => const ListEquality().hash([e?.name]);

  @override
  bool isValidKey(Object? o) => o is DoctorRecord;
}
