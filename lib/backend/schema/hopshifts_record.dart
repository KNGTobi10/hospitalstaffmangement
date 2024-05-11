import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HopshiftsRecord extends FirestoreRecord {
  HopshiftsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "starttime" field.
  DateTime? _starttime;
  DateTime? get starttime => _starttime;
  bool hasStarttime() => _starttime != null;

  // "endtime" field.
  DateTime? _endtime;
  DateTime? get endtime => _endtime;
  bool hasEndtime() => _endtime != null;

  // "jobdescription" field.
  String? _jobdescription;
  String get jobdescription => _jobdescription ?? '';
  bool hasJobdescription() => _jobdescription != null;

  // "payamount" field.
  double? _payamount;
  double get payamount => _payamount ?? 0.0;
  bool hasPayamount() => _payamount != null;

  // "license" field.
  String? _license;
  String get license => _license ?? '';
  bool hasLicense() => _license != null;

  // "jobrequirement" field.
  String? _jobrequirement;
  String get jobrequirement => _jobrequirement ?? '';
  bool hasJobrequirement() => _jobrequirement != null;

  // "shiftposter" field.
  String? _shiftposter;
  String get shiftposter => _shiftposter ?? '';
  bool hasShiftposter() => _shiftposter != null;

  // "schedule" field.
  String? _schedule;
  String get schedule => _schedule ?? '';
  bool hasSchedule() => _schedule != null;

  // "paymentstaus" field.
  String? _paymentstaus;
  String get paymentstaus => _paymentstaus ?? '';
  bool hasPaymentstaus() => _paymentstaus != null;

  // "shiftstatus" field.
  String? _shiftstatus;
  String get shiftstatus => _shiftstatus ?? '';
  bool hasShiftstatus() => _shiftstatus != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _starttime = snapshotData['starttime'] as DateTime?;
    _endtime = snapshotData['endtime'] as DateTime?;
    _jobdescription = snapshotData['jobdescription'] as String?;
    _payamount = castToType<double>(snapshotData['payamount']);
    _license = snapshotData['license'] as String?;
    _jobrequirement = snapshotData['jobrequirement'] as String?;
    _shiftposter = snapshotData['shiftposter'] as String?;
    _schedule = snapshotData['schedule'] as String?;
    _paymentstaus = snapshotData['paymentstaus'] as String?;
    _shiftstatus = snapshotData['shiftstatus'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('hopshifts');

  static Stream<HopshiftsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HopshiftsRecord.fromSnapshot(s));

  static Future<HopshiftsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HopshiftsRecord.fromSnapshot(s));

  static HopshiftsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HopshiftsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HopshiftsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HopshiftsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HopshiftsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HopshiftsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHopshiftsRecordData({
  String? title,
  DateTime? date,
  DateTime? starttime,
  DateTime? endtime,
  String? jobdescription,
  double? payamount,
  String? license,
  String? jobrequirement,
  String? shiftposter,
  String? schedule,
  String? paymentstaus,
  String? shiftstatus,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'date': date,
      'starttime': starttime,
      'endtime': endtime,
      'jobdescription': jobdescription,
      'payamount': payamount,
      'license': license,
      'jobrequirement': jobrequirement,
      'shiftposter': shiftposter,
      'schedule': schedule,
      'paymentstaus': paymentstaus,
      'shiftstatus': shiftstatus,
    }.withoutNulls,
  );

  return firestoreData;
}

class HopshiftsRecordDocumentEquality implements Equality<HopshiftsRecord> {
  const HopshiftsRecordDocumentEquality();

  @override
  bool equals(HopshiftsRecord? e1, HopshiftsRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.date == e2?.date &&
        e1?.starttime == e2?.starttime &&
        e1?.endtime == e2?.endtime &&
        e1?.jobdescription == e2?.jobdescription &&
        e1?.payamount == e2?.payamount &&
        e1?.license == e2?.license &&
        e1?.jobrequirement == e2?.jobrequirement &&
        e1?.shiftposter == e2?.shiftposter &&
        e1?.schedule == e2?.schedule &&
        e1?.paymentstaus == e2?.paymentstaus &&
        e1?.shiftstatus == e2?.shiftstatus;
  }

  @override
  int hash(HopshiftsRecord? e) => const ListEquality().hash([
        e?.title,
        e?.date,
        e?.starttime,
        e?.endtime,
        e?.jobdescription,
        e?.payamount,
        e?.license,
        e?.jobrequirement,
        e?.shiftposter,
        e?.schedule,
        e?.paymentstaus,
        e?.shiftstatus
      ]);

  @override
  bool isValidKey(Object? o) => o is HopshiftsRecord;
}
