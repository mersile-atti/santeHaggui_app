import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class UserChildrenRecord extends FirestoreRecord {
  UserChildrenRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "date_of_birth" field.
  DateTime? _dateOfBirth;
  DateTime? get dateOfBirth => _dateOfBirth;
  bool hasDateOfBirth() => _dateOfBirth != null;

  // "user_sex" field.
  String? _userSex;
  String get userSex => _userSex ?? '';
  bool hasUserSex() => _userSex != null;

  void _initializeFields() {
    _firstName = snapshotData['first_name'] as String?;
    _lastName = snapshotData['last_name'] as String?;
    _dateOfBirth = snapshotData['date_of_birth'] as DateTime?;
    _userSex = snapshotData['user_sex'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('userChildren');

  static Stream<UserChildrenRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserChildrenRecord.fromSnapshot(s));

  static Future<UserChildrenRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserChildrenRecord.fromSnapshot(s));

  static UserChildrenRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserChildrenRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserChildrenRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserChildrenRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserChildrenRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserChildrenRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserChildrenRecordData({
  String? firstName,
  String? lastName,
  DateTime? dateOfBirth,
  String? userSex,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'first_name': firstName,
      'last_name': lastName,
      'date_of_birth': dateOfBirth,
      'user_sex': userSex,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserChildrenRecordDocumentEquality
    implements Equality<UserChildrenRecord> {
  const UserChildrenRecordDocumentEquality();

  @override
  bool equals(UserChildrenRecord? e1, UserChildrenRecord? e2) {
    return e1?.firstName == e2?.firstName &&
        e1?.lastName == e2?.lastName &&
        e1?.dateOfBirth == e2?.dateOfBirth &&
        e1?.userSex == e2?.userSex;
  }

  @override
  int hash(UserChildrenRecord? e) => const ListEquality()
      .hash([e?.firstName, e?.lastName, e?.dateOfBirth, e?.userSex]);

  @override
  bool isValidKey(Object? o) => o is UserChildrenRecord;
}
