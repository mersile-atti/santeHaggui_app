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

  // "birthDate" field.
  DateTime? _birthDate;
  DateTime? get birthDate => _birthDate;
  bool hasBirthDate() => _birthDate != null;

  // "height" field.
  double? _height;
  double get height => _height ?? 0.0;
  bool hasHeight() => _height != null;

  // "weight" field.
  double? _weight;
  double get weight => _weight ?? 0.0;
  bool hasWeight() => _weight != null;

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

  // "name" field.
  DocumentReference? _name;
  DocumentReference? get name => _name;
  bool hasName() => _name != null;

  // "surname" field.
  DocumentReference? _surname;
  DocumentReference? get surname => _surname;
  bool hasSurname() => _surname != null;

  // "userSex" field.
  DocumentReference? _userSex;
  DocumentReference? get userSex => _userSex;
  bool hasUserSex() => _userSex != null;

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

  void _initializeFields() {
    _doctor = snapshotData['doctor'] as DocumentReference?;
    _medicalCondition = snapshotData['medicalCondition'] as String?;
    _birthDate = snapshotData['birthDate'] as DateTime?;
    _height = castToType<double>(snapshotData['height']);
    _weight = castToType<double>(snapshotData['weight']);
    _bloodType = snapshotData['bloodType'] as String?;
    _allergies = snapshotData['allergies'] as String?;
    _medications = snapshotData['medications'] as String?;
    _medicalNotes = snapshotData['medicalNotes'] as String?;
    _name = snapshotData['name'] as DocumentReference?;
    _surname = snapshotData['surname'] as DocumentReference?;
    _userSex = snapshotData['userSex'] as DocumentReference?;
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
  DateTime? birthDate,
  double? height,
  double? weight,
  String? bloodType,
  String? allergies,
  String? medications,
  String? medicalNotes,
  DocumentReference? name,
  DocumentReference? surname,
  DocumentReference? userSex,
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
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'doctor': doctor,
      'medicalCondition': medicalCondition,
      'birthDate': birthDate,
      'height': height,
      'weight': weight,
      'bloodType': bloodType,
      'allergies': allergies,
      'medications': medications,
      'medicalNotes': medicalNotes,
      'name': name,
      'surname': surname,
      'userSex': userSex,
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
        e1?.birthDate == e2?.birthDate &&
        e1?.height == e2?.height &&
        e1?.weight == e2?.weight &&
        e1?.bloodType == e2?.bloodType &&
        e1?.allergies == e2?.allergies &&
        e1?.medications == e2?.medications &&
        e1?.medicalNotes == e2?.medicalNotes &&
        e1?.name == e2?.name &&
        e1?.surname == e2?.surname &&
        e1?.userSex == e2?.userSex &&
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
        e1?.emergencyContactRelanship == e2?.emergencyContactRelanship;
  }

  @override
  int hash(MedicalProfilRecord? e) => const ListEquality().hash([
        e?.doctor,
        e?.medicalCondition,
        e?.birthDate,
        e?.height,
        e?.weight,
        e?.bloodType,
        e?.allergies,
        e?.medications,
        e?.medicalNotes,
        e?.name,
        e?.surname,
        e?.userSex,
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
        e?.emergencyContactRelanship
      ]);

  @override
  bool isValidKey(Object? o) => o is MedicalProfilRecord;
}
