import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class ProfilePicturesRecord extends FirestoreRecord {
  ProfilePicturesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "photos" field.
  String? _photos;
  String get photos => _photos ?? '';
  bool hasPhotos() => _photos != null;

  void _initializeFields() {
    _photos = snapshotData['photos'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('profilePictures');

  static Stream<ProfilePicturesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProfilePicturesRecord.fromSnapshot(s));

  static Future<ProfilePicturesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProfilePicturesRecord.fromSnapshot(s));

  static ProfilePicturesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProfilePicturesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProfilePicturesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProfilePicturesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProfilePicturesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProfilePicturesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProfilePicturesRecordData({
  String? photos,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'photos': photos,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProfilePicturesRecordDocumentEquality
    implements Equality<ProfilePicturesRecord> {
  const ProfilePicturesRecordDocumentEquality();

  @override
  bool equals(ProfilePicturesRecord? e1, ProfilePicturesRecord? e2) {
    return e1?.photos == e2?.photos;
  }

  @override
  int hash(ProfilePicturesRecord? e) => const ListEquality().hash([e?.photos]);

  @override
  bool isValidKey(Object? o) => o is ProfilePicturesRecord;
}
