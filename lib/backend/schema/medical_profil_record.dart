import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class MedicalProfilRecord extends FirestoreRecord {
  MedicalProfilRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "doctor" field.
  DocumentReference? _doctor;
  DocumentReference? get doctor => _doctor;
  bool hasDoctor() => _doctor != null;

  // "medicalCondition" field.
  String? _medicalCondition;
  String get medicalCondition => _medicalCondition ?? '';
  bool hasMedicalCondition() => _medicalCondition != null;

  // "bloodType" field.
  String? _bloodType;
  String get bloodType => _bloodType ?? '';
  bool hasBloodType() => _bloodType != null;

  // "allergies" field.
  String? _allergies;
  String get allergies => _allergies ?? '';
  bool hasAllergies() => _allergies != null;

  // "medications" field.
  String? _medications;
  String get medications => _medications ?? '';
  bool hasMedications() => _medications != null;

  // "medicalNotes" field.
  String? _medicalNotes;
  String get medicalNotes => _medicalNotes ?? '';
  bool hasMedicalNotes() => _medicalNotes != null;

  // "adress" field.
  String? _adress;
  String get adress => _adress ?? '';
  bool hasAdress() => _adress != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  bool hasCountry() => _country != null;

  // "provinceOuRegion" field.
  String? _provinceOuRegion;
  String get provinceOuRegion => _provinceOuRegion ?? '';
  bool hasProvinceOuRegion() => _provinceOuRegion != null;

  // "universalMedicalidentity" field.
  String? _universalMedicalidentity;
  String get universalMedicalidentity => _universalMedicalidentity ?? '';
  bool hasUniversalMedicalidentity() => _universalMedicalidentity != null;

  // "sickleCellGloodGroup" field.
  String? _sickleCellGloodGroup;
  String get sickleCellGloodGroup => _sickleCellGloodGroup ?? '';
  bool hasSickleCellGloodGroup() => _sickleCellGloodGroup != null;

  // "organDonor" field.
  bool? _organDonor;
  bool get organDonor => _organDonor ?? false;
  bool hasOrganDonor() => _organDonor != null;

  // "emergencyContact" field.
  String? _emergencyContact;
  String get emergencyContact => _emergencyContact ?? '';
  bool hasEmergencyContact() => _emergencyContact != null;

  // "emergencyContactPhoneNumber" field.
  String? _emergencyContactPhoneNumber;
  String get emergencyContactPhoneNumber => _emergencyContactPhoneNumber ?? '';
  bool hasEmergencyContactPhoneNumber() => _emergencyContactPhoneNumber != null;

  // "emergencyContactAddress" field.
  String? _emergencyContactAddress;
  String get emergencyContactAddress => _emergencyContactAddress ?? '';
  bool hasEmergencyContactAddress() => _emergencyContactAddress != null;

  // "emergencyContactRelanship" field.
  String? _emergencyContactRelanship;
  String get emergencyContactRelanship => _emergencyContactRelanship ?? '';
  bool hasEmergencyContactRelanship() => _emergencyContactRelanship != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "birthDate" field.
  String? _birthDate;
  String get birthDate => _birthDate ?? '';
  bool hasBirthDate() => _birthDate != null;

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "fullName" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  bool hasFullName() => _fullName != null;

  // "userSex" field.
  String? _userSex;
  String get userSex => _userSex ?? '';
  bool hasUserSex() => _userSex != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "confirmPassword" field.
  String? _confirmPassword;
  String get confirmPassword => _confirmPassword ?? '';
  bool hasConfirmPassword() => _confirmPassword != null;

  // "heigtht" field.
  String? _heigtht;
  String get heigtht => _heigtht ?? '';
  bool hasHeigtht() => _heigtht != null;

  // "weight" field.
  String? _weight;
  String get weight => _weight ?? '';
  bool hasWeight() => _weight != null;

  void _initializeFields() {
    _doctor = snapshotData['doctor'] as DocumentReference?;
    _medicalCondition = snapshotData['medicalCondition'] as String?;
    _bloodType = snapshotData['bloodType'] as String?;
    _allergies = snapshotData['allergies'] as String?;
    _medications = snapshotData['medications'] as String?;
    _medicalNotes = snapshotData['medicalNotes'] as String?;
    _adress = snapshotData['adress'] as String?;
    _city = snapshotData['city'] as String?;
    _country = snapshotData['country'] as String?;
    _provinceOuRegion = snapshotData['provinceOuRegion'] as String?;
    _universalMedicalidentity =
        snapshotData['universalMedicalidentity'] as String?;
    _sickleCellGloodGroup = snapshotData['sickleCellGloodGroup'] as String?;
    _organDonor = snapshotData['organDonor'] as bool?;
    _emergencyContact = snapshotData['emergencyContact'] as String?;
    _emergencyContactPhoneNumber =
        snapshotData['emergencyContactPhoneNumber'] as String?;
    _emergencyContactAddress =
        snapshotData['emergencyContactAddress'] as String?;
    _emergencyContactRelanship =
        snapshotData['emergencyContactRelanship'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _birthDate = snapshotData['birthDate'] as String?;
    _userName = snapshotData['userName'] as String?;
    _fullName = snapshotData['fullName'] as String?;
    _userSex = snapshotData['userSex'] as String?;
    _email = snapshotData['email'] as String?;
    _password = snapshotData['password'] as String?;
    _confirmPassword = snapshotData['confirmPassword'] as String?;
    _heigtht = snapshotData['heigtht'] as String?;
    _weight = snapshotData['weight'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('medicalProfil');

  static Stream<MedicalProfilRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MedicalProfilRecord.fromSnapshot(s));

  static Future<MedicalProfilRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MedicalProfilRecord.fromSnapshot(s));

  static MedicalProfilRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MedicalProfilRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MedicalProfilRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MedicalProfilRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MedicalProfilRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MedicalProfilRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMedicalProfilRecordData({
  DocumentReference? doctor,
  String? medicalCondition,
  String? bloodType,
  String? allergies,
  String? medications,
  String? medicalNotes,
  String? adress,
  String? city,
  String? country,
  String? provinceOuRegion,
  String? universalMedicalidentity,
  String? sickleCellGloodGroup,
  bool? organDonor,
  String? emergencyContact,
  String? emergencyContactPhoneNumber,
  String? emergencyContactAddress,
  String? emergencyContactRelanship,
  String? photoUrl,
  String? birthDate,
  String? userName,
  String? fullName,
  String? userSex,
  String? email,
  String? password,
  String? confirmPassword,
  String? heigtht,
  String? weight,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'doctor': doctor,
      'medicalCondition': medicalCondition,
      'bloodType': bloodType,
      'allergies': allergies,
      'medications': medications,
      'medicalNotes': medicalNotes,
      'adress': adress,
      'city': city,
      'country': country,
      'provinceOuRegion': provinceOuRegion,
      'universalMedicalidentity': universalMedicalidentity,
      'sickleCellGloodGroup': sickleCellGloodGroup,
      'organDonor': organDonor,
      'emergencyContact': emergencyContact,
      'emergencyContactPhoneNumber': emergencyContactPhoneNumber,
      'emergencyContactAddress': emergencyContactAddress,
      'emergencyContactRelanship': emergencyContactRelanship,
      'photo_url': photoUrl,
      'birthDate': birthDate,
      'userName': userName,
      'fullName': fullName,
      'userSex': userSex,
      'email': email,
      'password': password,
      'confirmPassword': confirmPassword,
      'heigtht': heigtht,
      'weight': weight,
    }.withoutNulls,
  );

  return firestoreData;
}

class MedicalProfilRecordDocumentEquality
    implements Equality<MedicalProfilRecord> {
  const MedicalProfilRecordDocumentEquality();

  @override
  bool equals(MedicalProfilRecord? e1, MedicalProfilRecord? e2) {
    return e1?.doctor == e2?.doctor &&
        e1?.medicalCondition == e2?.medicalCondition &&
        e1?.bloodType == e2?.bloodType &&
        e1?.allergies == e2?.allergies &&
        e1?.medications == e2?.medications &&
        e1?.medicalNotes == e2?.medicalNotes &&
        e1?.adress == e2?.adress &&
        e1?.city == e2?.city &&
        e1?.country == e2?.country &&
        e1?.provinceOuRegion == e2?.provinceOuRegion &&
        e1?.universalMedicalidentity == e2?.universalMedicalidentity &&
        e1?.sickleCellGloodGroup == e2?.sickleCellGloodGroup &&
        e1?.organDonor == e2?.organDonor &&
        e1?.emergencyContact == e2?.emergencyContact &&
        e1?.emergencyContactPhoneNumber == e2?.emergencyContactPhoneNumber &&
        e1?.emergencyContactAddress == e2?.emergencyContactAddress &&
        e1?.emergencyContactRelanship == e2?.emergencyContactRelanship &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.birthDate == e2?.birthDate &&
        e1?.userName == e2?.userName &&
        e1?.fullName == e2?.fullName &&
        e1?.userSex == e2?.userSex &&
        e1?.email == e2?.email &&
        e1?.password == e2?.password &&
        e1?.confirmPassword == e2?.confirmPassword &&
        e1?.heigtht == e2?.heigtht &&
        e1?.weight == e2?.weight;
  }

  @override
  int hash(MedicalProfilRecord? e) => const ListEquality().hash([
        e?.doctor,
        e?.medicalCondition,
        e?.bloodType,
        e?.allergies,
        e?.medications,
        e?.medicalNotes,
        e?.adress,
        e?.city,
        e?.country,
        e?.provinceOuRegion,
        e?.universalMedicalidentity,
        e?.sickleCellGloodGroup,
        e?.organDonor,
        e?.emergencyContact,
        e?.emergencyContactPhoneNumber,
        e?.emergencyContactAddress,
        e?.emergencyContactRelanship,
        e?.photoUrl,
        e?.birthDate,
        e?.userName,
        e?.fullName,
        e?.userSex,
        e?.email,
        e?.password,
        e?.confirmPassword,
        e?.heigtht,
        e?.weight
      ]);

  @override
  bool isValidKey(Object? o) => o is MedicalProfilRecord;
}
