// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmergencyProfileStruct extends FFFirebaseStruct {
  EmergencyProfileStruct({
    String? name,
    DateTime? birthday,
    String? bloodType,
    String? profilePicture,
    String? sex,
    List<String>? allergies,
    List<String>? medications,
    List<String>? treatmentsAndProcedures,
    String? address,
    List<String>? emergencyContact,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _birthday = birthday,
        _bloodType = bloodType,
        _profilePicture = profilePicture,
        _sex = sex,
        _allergies = allergies,
        _medications = medications,
        _treatmentsAndProcedures = treatmentsAndProcedures,
        _address = address,
        _emergencyContact = emergencyContact,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "birthday" field.
  DateTime? _birthday;
  DateTime? get birthday => _birthday;
  set birthday(DateTime? val) => _birthday = val;
  bool hasBirthday() => _birthday != null;

  // "bloodType" field.
  String? _bloodType;
  String get bloodType => _bloodType ?? '';
  set bloodType(String? val) => _bloodType = val;
  bool hasBloodType() => _bloodType != null;

  // "profilePicture" field.
  String? _profilePicture;
  String get profilePicture => _profilePicture ?? '';
  set profilePicture(String? val) => _profilePicture = val;
  bool hasProfilePicture() => _profilePicture != null;

  // "sex" field.
  String? _sex;
  String get sex => _sex ?? '';
  set sex(String? val) => _sex = val;
  bool hasSex() => _sex != null;

  // "allergies" field.
  List<String>? _allergies;
  List<String> get allergies => _allergies ?? const [];
  set allergies(List<String>? val) => _allergies = val;
  void updateAllergies(Function(List<String>) updateFn) =>
      updateFn(_allergies ??= []);
  bool hasAllergies() => _allergies != null;

  // "medications" field.
  List<String>? _medications;
  List<String> get medications => _medications ?? const [];
  set medications(List<String>? val) => _medications = val;
  void updateMedications(Function(List<String>) updateFn) =>
      updateFn(_medications ??= []);
  bool hasMedications() => _medications != null;

  // "treatmentsAndProcedures" field.
  List<String>? _treatmentsAndProcedures;
  List<String> get treatmentsAndProcedures =>
      _treatmentsAndProcedures ?? const [];
  set treatmentsAndProcedures(List<String>? val) =>
      _treatmentsAndProcedures = val;
  void updateTreatmentsAndProcedures(Function(List<String>) updateFn) =>
      updateFn(_treatmentsAndProcedures ??= []);
  bool hasTreatmentsAndProcedures() => _treatmentsAndProcedures != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;
  bool hasAddress() => _address != null;

  // "emergencyContact" field.
  List<String>? _emergencyContact;
  List<String> get emergencyContact => _emergencyContact ?? const [];
  set emergencyContact(List<String>? val) => _emergencyContact = val;
  void updateEmergencyContact(Function(List<String>) updateFn) =>
      updateFn(_emergencyContact ??= []);
  bool hasEmergencyContact() => _emergencyContact != null;

  static EmergencyProfileStruct fromMap(Map<String, dynamic> data) =>
      EmergencyProfileStruct(
        name: data['name'] as String?,
        birthday: data['birthday'] as DateTime?,
        bloodType: data['bloodType'] as String?,
        profilePicture: data['profilePicture'] as String?,
        sex: data['sex'] as String?,
        allergies: getDataList(data['allergies']),
        medications: getDataList(data['medications']),
        treatmentsAndProcedures: getDataList(data['treatmentsAndProcedures']),
        address: data['address'] as String?,
        emergencyContact: getDataList(data['emergencyContact']),
      );

  static EmergencyProfileStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic>
          ? EmergencyProfileStruct.fromMap(data)
          : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'birthday': _birthday,
        'bloodType': _bloodType,
        'profilePicture': _profilePicture,
        'sex': _sex,
        'allergies': _allergies,
        'medications': _medications,
        'treatmentsAndProcedures': _treatmentsAndProcedures,
        'address': _address,
        'emergencyContact': _emergencyContact,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'birthday': serializeParam(
          _birthday,
          ParamType.DateTime,
        ),
        'bloodType': serializeParam(
          _bloodType,
          ParamType.String,
        ),
        'profilePicture': serializeParam(
          _profilePicture,
          ParamType.String,
        ),
        'sex': serializeParam(
          _sex,
          ParamType.String,
        ),
        'allergies': serializeParam(
          _allergies,
          ParamType.String,
          true,
        ),
        'medications': serializeParam(
          _medications,
          ParamType.String,
          true,
        ),
        'treatmentsAndProcedures': serializeParam(
          _treatmentsAndProcedures,
          ParamType.String,
          true,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'emergencyContact': serializeParam(
          _emergencyContact,
          ParamType.String,
          true,
        ),
      }.withoutNulls;

  static EmergencyProfileStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      EmergencyProfileStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        birthday: deserializeParam(
          data['birthday'],
          ParamType.DateTime,
          false,
        ),
        bloodType: deserializeParam(
          data['bloodType'],
          ParamType.String,
          false,
        ),
        profilePicture: deserializeParam(
          data['profilePicture'],
          ParamType.String,
          false,
        ),
        sex: deserializeParam(
          data['sex'],
          ParamType.String,
          false,
        ),
        allergies: deserializeParam<String>(
          data['allergies'],
          ParamType.String,
          true,
        ),
        medications: deserializeParam<String>(
          data['medications'],
          ParamType.String,
          true,
        ),
        treatmentsAndProcedures: deserializeParam<String>(
          data['treatmentsAndProcedures'],
          ParamType.String,
          true,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        emergencyContact: deserializeParam<String>(
          data['emergencyContact'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'EmergencyProfileStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is EmergencyProfileStruct &&
        name == other.name &&
        birthday == other.birthday &&
        bloodType == other.bloodType &&
        profilePicture == other.profilePicture &&
        sex == other.sex &&
        listEquality.equals(allergies, other.allergies) &&
        listEquality.equals(medications, other.medications) &&
        listEquality.equals(
            treatmentsAndProcedures, other.treatmentsAndProcedures) &&
        address == other.address &&
        listEquality.equals(emergencyContact, other.emergencyContact);
  }

  @override
  int get hashCode => const ListEquality().hash([
        name,
        birthday,
        bloodType,
        profilePicture,
        sex,
        allergies,
        medications,
        treatmentsAndProcedures,
        address,
        emergencyContact
      ]);
}

EmergencyProfileStruct createEmergencyProfileStruct({
  String? name,
  DateTime? birthday,
  String? bloodType,
  String? profilePicture,
  String? sex,
  String? address,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EmergencyProfileStruct(
      name: name,
      birthday: birthday,
      bloodType: bloodType,
      profilePicture: profilePicture,
      sex: sex,
      address: address,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

EmergencyProfileStruct? updateEmergencyProfileStruct(
  EmergencyProfileStruct? emergencyProfile, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    emergencyProfile
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addEmergencyProfileStructData(
  Map<String, dynamic> firestoreData,
  EmergencyProfileStruct? emergencyProfile,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (emergencyProfile == null) {
    return;
  }
  if (emergencyProfile.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && emergencyProfile.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final emergencyProfileData =
      getEmergencyProfileFirestoreData(emergencyProfile, forFieldValue);
  final nestedData =
      emergencyProfileData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = emergencyProfile.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEmergencyProfileFirestoreData(
  EmergencyProfileStruct? emergencyProfile, [
  bool forFieldValue = false,
]) {
  if (emergencyProfile == null) {
    return {};
  }
  final firestoreData = mapToFirestore(emergencyProfile.toMap());

  // Add any Firestore field values
  emergencyProfile.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEmergencyProfileListFirestoreData(
  List<EmergencyProfileStruct>? emergencyProfiles,
) =>
    emergencyProfiles
        ?.map((e) => getEmergencyProfileFirestoreData(e, true))
        .toList() ??
    [];
