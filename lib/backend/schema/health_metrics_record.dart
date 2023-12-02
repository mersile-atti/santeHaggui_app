import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class HealthMetricsRecord extends FirestoreRecord {
  HealthMetricsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "userName" field.
  DocumentReference? _userName;
  DocumentReference? get userName => _userName;
  bool hasUserName() => _userName != null;

  // "bloodOxygen" field.
  String? _bloodOxygen;
  String get bloodOxygen => _bloodOxygen ?? '';
  bool hasBloodOxygen() => _bloodOxygen != null;

  // "height" field.
  double? _height;
  double get height => _height ?? 0.0;
  bool hasHeight() => _height != null;

  // "weight" field.
  double? _weight;
  double get weight => _weight ?? 0.0;
  bool hasWeight() => _weight != null;

  // "indiceMasseCorporelle" field.
  double? _indiceMasseCorporelle;
  double get indiceMasseCorporelle => _indiceMasseCorporelle ?? 0.0;
  bool hasIndiceMasseCorporelle() => _indiceMasseCorporelle != null;

  // "heartRate" field.
  String? _heartRate;
  String get heartRate => _heartRate ?? '';
  bool hasHeartRate() => _heartRate != null;

  // "temperatureCorporelle" field.
  String? _temperatureCorporelle;
  String get temperatureCorporelle => _temperatureCorporelle ?? '';
  bool hasTemperatureCorporelle() => _temperatureCorporelle != null;

  // "systolicPressionArterielle" field.
  String? _systolicPressionArterielle;
  String get systolicPressionArterielle => _systolicPressionArterielle ?? '';
  bool hasSystolicPressionArterielle() => _systolicPressionArterielle != null;

  // "diastolicPressionArterielle" field.
  String? _diastolicPressionArterielle;
  String get diastolicPressionArterielle => _diastolicPressionArterielle ?? '';
  bool hasDiastolicPressionArterielle() => _diastolicPressionArterielle != null;

  // "cholesterol" field.
  String? _cholesterol;
  String get cholesterol => _cholesterol ?? '';
  bool hasCholesterol() => _cholesterol != null;

  // "ldlCholesterol" field.
  String? _ldlCholesterol;
  String get ldlCholesterol => _ldlCholesterol ?? '';
  bool hasLdlCholesterol() => _ldlCholesterol != null;

  // "hdlCholesterol" field.
  String? _hdlCholesterol;
  String get hdlCholesterol => _hdlCholesterol ?? '';
  bool hasHdlCholesterol() => _hdlCholesterol != null;

  // "triglycerides" field.
  String? _triglycerides;
  String get triglycerides => _triglycerides ?? '';
  bool hasTriglycerides() => _triglycerides != null;

  // "rapportTotalCholesAndHdl" field.
  double? _rapportTotalCholesAndHdl;
  double get rapportTotalCholesAndHdl => _rapportTotalCholesAndHdl ?? 0.0;
  bool hasRapportTotalCholesAndHdl() => _rapportTotalCholesAndHdl != null;

  // "glucose" field.
  String? _glucose;
  String get glucose => _glucose ?? '';
  bool hasGlucose() => _glucose != null;

  // "waistCircumference" field.
  String? _waistCircumference;
  String get waistCircumference => _waistCircumference ?? '';
  bool hasWaistCircumference() => _waistCircumference != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _userName = snapshotData['userName'] as DocumentReference?;
    _bloodOxygen = snapshotData['bloodOxygen'] as String?;
    _height = castToType<double>(snapshotData['height']);
    _weight = castToType<double>(snapshotData['weight']);
    _indiceMasseCorporelle =
        castToType<double>(snapshotData['indiceMasseCorporelle']);
    _heartRate = snapshotData['heartRate'] as String?;
    _temperatureCorporelle = snapshotData['temperatureCorporelle'] as String?;
    _systolicPressionArterielle =
        snapshotData['systolicPressionArterielle'] as String?;
    _diastolicPressionArterielle =
        snapshotData['diastolicPressionArterielle'] as String?;
    _cholesterol = snapshotData['cholesterol'] as String?;
    _ldlCholesterol = snapshotData['ldlCholesterol'] as String?;
    _hdlCholesterol = snapshotData['hdlCholesterol'] as String?;
    _triglycerides = snapshotData['triglycerides'] as String?;
    _rapportTotalCholesAndHdl =
        castToType<double>(snapshotData['rapportTotalCholesAndHdl']);
    _glucose = snapshotData['glucose'] as String?;
    _waistCircumference = snapshotData['waistCircumference'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('healthMetrics')
          : FirebaseFirestore.instance.collectionGroup('healthMetrics');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('healthMetrics').doc();

  static Stream<HealthMetricsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HealthMetricsRecord.fromSnapshot(s));

  static Future<HealthMetricsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HealthMetricsRecord.fromSnapshot(s));

  static HealthMetricsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HealthMetricsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HealthMetricsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HealthMetricsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HealthMetricsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HealthMetricsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHealthMetricsRecordData({
  DocumentReference? userName,
  String? bloodOxygen,
  double? height,
  double? weight,
  double? indiceMasseCorporelle,
  String? heartRate,
  String? temperatureCorporelle,
  String? systolicPressionArterielle,
  String? diastolicPressionArterielle,
  String? cholesterol,
  String? ldlCholesterol,
  String? hdlCholesterol,
  String? triglycerides,
  double? rapportTotalCholesAndHdl,
  String? glucose,
  String? waistCircumference,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userName': userName,
      'bloodOxygen': bloodOxygen,
      'height': height,
      'weight': weight,
      'indiceMasseCorporelle': indiceMasseCorporelle,
      'heartRate': heartRate,
      'temperatureCorporelle': temperatureCorporelle,
      'systolicPressionArterielle': systolicPressionArterielle,
      'diastolicPressionArterielle': diastolicPressionArterielle,
      'cholesterol': cholesterol,
      'ldlCholesterol': ldlCholesterol,
      'hdlCholesterol': hdlCholesterol,
      'triglycerides': triglycerides,
      'rapportTotalCholesAndHdl': rapportTotalCholesAndHdl,
      'glucose': glucose,
      'waistCircumference': waistCircumference,
    }.withoutNulls,
  );

  return firestoreData;
}

class HealthMetricsRecordDocumentEquality
    implements Equality<HealthMetricsRecord> {
  const HealthMetricsRecordDocumentEquality();

  @override
  bool equals(HealthMetricsRecord? e1, HealthMetricsRecord? e2) {
    return e1?.userName == e2?.userName &&
        e1?.bloodOxygen == e2?.bloodOxygen &&
        e1?.height == e2?.height &&
        e1?.weight == e2?.weight &&
        e1?.indiceMasseCorporelle == e2?.indiceMasseCorporelle &&
        e1?.heartRate == e2?.heartRate &&
        e1?.temperatureCorporelle == e2?.temperatureCorporelle &&
        e1?.systolicPressionArterielle == e2?.systolicPressionArterielle &&
        e1?.diastolicPressionArterielle == e2?.diastolicPressionArterielle &&
        e1?.cholesterol == e2?.cholesterol &&
        e1?.ldlCholesterol == e2?.ldlCholesterol &&
        e1?.hdlCholesterol == e2?.hdlCholesterol &&
        e1?.triglycerides == e2?.triglycerides &&
        e1?.rapportTotalCholesAndHdl == e2?.rapportTotalCholesAndHdl &&
        e1?.glucose == e2?.glucose &&
        e1?.waistCircumference == e2?.waistCircumference;
  }

  @override
  int hash(HealthMetricsRecord? e) => const ListEquality().hash([
        e?.userName,
        e?.bloodOxygen,
        e?.height,
        e?.weight,
        e?.indiceMasseCorporelle,
        e?.heartRate,
        e?.temperatureCorporelle,
        e?.systolicPressionArterielle,
        e?.diastolicPressionArterielle,
        e?.cholesterol,
        e?.ldlCholesterol,
        e?.hdlCholesterol,
        e?.triglycerides,
        e?.rapportTotalCholesAndHdl,
        e?.glucose,
        e?.waistCircumference
      ]);

  @override
  bool isValidKey(Object? o) => o is HealthMetricsRecord;
}
