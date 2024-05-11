import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ShiftRecord extends FirestoreRecord {
  ShiftRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "startTime" field.
  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  bool hasStartTime() => _startTime != null;

  // "endTime" field.
  DateTime? _endTime;
  DateTime? get endTime => _endTime;
  bool hasEndTime() => _endTime != null;

  // "jobTitle" field.
  String? _jobTitle;
  String get jobTitle => _jobTitle ?? '';
  bool hasJobTitle() => _jobTitle != null;

  // "employee" field.
  DocumentReference? _employee;
  DocumentReference? get employee => _employee;
  bool hasEmployee() => _employee != null;

  // "paymentamount" field.
  double? _paymentamount;
  double get paymentamount => _paymentamount ?? 0.0;
  bool hasPaymentamount() => _paymentamount != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "jobdescription" field.
  String? _jobdescription;
  String get jobdescription => _jobdescription ?? '';
  bool hasJobdescription() => _jobdescription != null;

  // "responsibility" field.
  String? _responsibility;
  String get responsibility => _responsibility ?? '';
  bool hasResponsibility() => _responsibility != null;

  // "license" field.
  String? _license;
  String get license => _license ?? '';
  bool hasLicense() => _license != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _startTime = snapshotData['startTime'] as DateTime?;
    _endTime = snapshotData['endTime'] as DateTime?;
    _jobTitle = snapshotData['jobTitle'] as String?;
    _employee = snapshotData['employee'] as DocumentReference?;
    _paymentamount = castToType<double>(snapshotData['paymentamount']);
    _date = snapshotData['date'] as DateTime?;
    _jobdescription = snapshotData['jobdescription'] as String?;
    _responsibility = snapshotData['responsibility'] as String?;
    _license = snapshotData['license'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('shift')
          : FirebaseFirestore.instance.collectionGroup('shift');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('shift').doc(id);

  static Stream<ShiftRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ShiftRecord.fromSnapshot(s));

  static Future<ShiftRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ShiftRecord.fromSnapshot(s));

  static ShiftRecord fromSnapshot(DocumentSnapshot snapshot) => ShiftRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ShiftRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ShiftRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ShiftRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ShiftRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createShiftRecordData({
  DateTime? startTime,
  DateTime? endTime,
  String? jobTitle,
  DocumentReference? employee,
  double? paymentamount,
  DateTime? date,
  String? jobdescription,
  String? responsibility,
  String? license,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'startTime': startTime,
      'endTime': endTime,
      'jobTitle': jobTitle,
      'employee': employee,
      'paymentamount': paymentamount,
      'date': date,
      'jobdescription': jobdescription,
      'responsibility': responsibility,
      'license': license,
    }.withoutNulls,
  );

  return firestoreData;
}

class ShiftRecordDocumentEquality implements Equality<ShiftRecord> {
  const ShiftRecordDocumentEquality();

  @override
  bool equals(ShiftRecord? e1, ShiftRecord? e2) {
    return e1?.startTime == e2?.startTime &&
        e1?.endTime == e2?.endTime &&
        e1?.jobTitle == e2?.jobTitle &&
        e1?.employee == e2?.employee &&
        e1?.paymentamount == e2?.paymentamount &&
        e1?.date == e2?.date &&
        e1?.jobdescription == e2?.jobdescription &&
        e1?.responsibility == e2?.responsibility &&
        e1?.license == e2?.license;
  }

  @override
  int hash(ShiftRecord? e) => const ListEquality().hash([
        e?.startTime,
        e?.endTime,
        e?.jobTitle,
        e?.employee,
        e?.paymentamount,
        e?.date,
        e?.jobdescription,
        e?.responsibility,
        e?.license
      ]);

  @override
  bool isValidKey(Object? o) => o is ShiftRecord;
}
