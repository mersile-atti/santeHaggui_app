import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "edited_time" field.
  DateTime? _editedTime;
  DateTime? get editedTime => _editedTime;
  bool hasEditedTime() => _editedTime != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  bool hasAge() => _age != null;

  // "ailments" field.
  String? _ailments;
  String get ailments => _ailments ?? '';
  bool hasAilments() => _ailments != null;

  // "enteryourpassword" field.
  String? _enteryourpassword;
  String get enteryourpassword => _enteryourpassword ?? '';
  bool hasEnteryourpassword() => _enteryourpassword != null;

  // "confirmyourpassword" field.
  String? _confirmyourpassword;
  String get confirmyourpassword => _confirmyourpassword ?? '';
  bool hasConfirmyourpassword() => _confirmyourpassword != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "surname" field.
  String? _surname;
  String get surname => _surname ?? '';
  bool hasSurname() => _surname != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "userSex" field.
  String? _userSex;
  String get userSex => _userSex ?? '';
  bool hasUserSex() => _userSex != null;

  // "shortDescription" field.
  String? _shortDescription;
  String get shortDescription => _shortDescription ?? '';
  bool hasShortDescription() => _shortDescription != null;

  // "last_active_time" field.
  DateTime? _lastActiveTime;
  DateTime? get lastActiveTime => _lastActiveTime;
  bool hasLastActiveTime() => _lastActiveTime != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _editedTime = snapshotData['edited_time'] as DateTime?;
    _bio = snapshotData['bio'] as String?;
    _age = castToType<int>(snapshotData['age']);
    _ailments = snapshotData['ailments'] as String?;
    _enteryourpassword = snapshotData['enteryourpassword'] as String?;
    _confirmyourpassword = snapshotData['confirmyourpassword'] as String?;
    _name = snapshotData['name'] as String?;
    _surname = snapshotData['surname'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _userSex = snapshotData['userSex'] as String?;
    _shortDescription = snapshotData['shortDescription'] as String?;
    _lastActiveTime = snapshotData['last_active_time'] as DateTime?;
    _role = snapshotData['role'] as String?;
    _title = snapshotData['title'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? editedTime,
  String? bio,
  int? age,
  String? ailments,
  String? enteryourpassword,
  String? confirmyourpassword,
  String? name,
  String? surname,
  String? displayName,
  String? userSex,
  String? shortDescription,
  DateTime? lastActiveTime,
  String? role,
  String? title,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'edited_time': editedTime,
      'bio': bio,
      'age': age,
      'ailments': ailments,
      'enteryourpassword': enteryourpassword,
      'confirmyourpassword': confirmyourpassword,
      'name': name,
      'surname': surname,
      'display_name': displayName,
      'userSex': userSex,
      'shortDescription': shortDescription,
      'last_active_time': lastActiveTime,
      'role': role,
      'title': title,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.editedTime == e2?.editedTime &&
        e1?.bio == e2?.bio &&
        e1?.age == e2?.age &&
        e1?.ailments == e2?.ailments &&
        e1?.enteryourpassword == e2?.enteryourpassword &&
        e1?.confirmyourpassword == e2?.confirmyourpassword &&
        e1?.name == e2?.name &&
        e1?.surname == e2?.surname &&
        e1?.displayName == e2?.displayName &&
        e1?.userSex == e2?.userSex &&
        e1?.shortDescription == e2?.shortDescription &&
        e1?.lastActiveTime == e2?.lastActiveTime &&
        e1?.role == e2?.role &&
        e1?.title == e2?.title;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.editedTime,
        e?.bio,
        e?.age,
        e?.ailments,
        e?.enteryourpassword,
        e?.confirmyourpassword,
        e?.name,
        e?.surname,
        e?.displayName,
        e?.userSex,
        e?.shortDescription,
        e?.lastActiveTime,
        e?.role,
        e?.title
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
