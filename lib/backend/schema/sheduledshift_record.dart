import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SheduledshiftRecord extends FirestoreRecord {
  SheduledshiftRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "employeename" field.
  String? _employeename;
  String get employeename => _employeename ?? '';
  bool hasEmployeename() => _employeename != null;

  // "employeelicense" field.
  String? _employeelicense;
  String get employeelicense => _employeelicense ?? '';
  bool hasEmployeelicense() => _employeelicense != null;

  // "employeelocation" field.
  String? _employeelocation;
  String get employeelocation => _employeelocation ?? '';
  bool hasEmployeelocation() => _employeelocation != null;

  // "employeeimage" field.
  String? _employeeimage;
  String get employeeimage => _employeeimage ?? '';
  bool hasEmployeeimage() => _employeeimage != null;

  // "shift" field.
  DocumentReference? _shift;
  DocumentReference? get shift => _shift;
  bool hasShift() => _shift != null;

  // "employeemail" field.
  String? _employeemail;
  String get employeemail => _employeemail ?? '';
  bool hasEmployeemail() => _employeemail != null;

  // "shiftstatus" field.
  String? _shiftstatus;
  String get shiftstatus => _shiftstatus ?? '';
  bool hasShiftstatus() => _shiftstatus != null;

  // "employeephonenumber" field.
  String? _employeephonenumber;
  String get employeephonenumber => _employeephonenumber ?? '';
  bool hasEmployeephonenumber() => _employeephonenumber != null;

  // "shifttitle" field.
  String? _shifttitle;
  String get shifttitle => _shifttitle ?? '';
  bool hasShifttitle() => _shifttitle != null;

  // "shiftdate" field.
  DateTime? _shiftdate;
  DateTime? get shiftdate => _shiftdate;
  bool hasShiftdate() => _shiftdate != null;

  // "shiftstarttime" field.
  DateTime? _shiftstarttime;
  DateTime? get shiftstarttime => _shiftstarttime;
  bool hasShiftstarttime() => _shiftstarttime != null;

  // "shiftendtime" field.
  DateTime? _shiftendtime;
  DateTime? get shiftendtime => _shiftendtime;
  bool hasShiftendtime() => _shiftendtime != null;

  // "paymentstatus" field.
  String? _paymentstatus;
  String get paymentstatus => _paymentstatus ?? '';
  bool hasPaymentstatus() => _paymentstatus != null;

  // "amounttopay" field.
  double? _amounttopay;
  double get amounttopay => _amounttopay ?? 0.0;
  bool hasAmounttopay() => _amounttopay != null;

  // "schedulednote" field.
  String? _schedulednote;
  String get schedulednote => _schedulednote ?? '';
  bool hasSchedulednote() => _schedulednote != null;

  // "shiftlocation" field.
  String? _shiftlocation;
  String get shiftlocation => _shiftlocation ?? '';
  bool hasShiftlocation() => _shiftlocation != null;

  // "userid" field.
  DocumentReference? _userid;
  DocumentReference? get userid => _userid;
  bool hasUserid() => _userid != null;

  void _initializeFields() {
    _employeename = snapshotData['employeename'] as String?;
    _employeelicense = snapshotData['employeelicense'] as String?;
    _employeelocation = snapshotData['employeelocation'] as String?;
    _employeeimage = snapshotData['employeeimage'] as String?;
    _shift = snapshotData['shift'] as DocumentReference?;
    _employeemail = snapshotData['employeemail'] as String?;
    _shiftstatus = snapshotData['shiftstatus'] as String?;
    _employeephonenumber = snapshotData['employeephonenumber'] as String?;
    _shifttitle = snapshotData['shifttitle'] as String?;
    _shiftdate = snapshotData['shiftdate'] as DateTime?;
    _shiftstarttime = snapshotData['shiftstarttime'] as DateTime?;
    _shiftendtime = snapshotData['shiftendtime'] as DateTime?;
    _paymentstatus = snapshotData['paymentstatus'] as String?;
    _amounttopay = castToType<double>(snapshotData['amounttopay']);
    _schedulednote = snapshotData['schedulednote'] as String?;
    _shiftlocation = snapshotData['shiftlocation'] as String?;
    _userid = snapshotData['userid'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sheduledshift');

  static Stream<SheduledshiftRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SheduledshiftRecord.fromSnapshot(s));

  static Future<SheduledshiftRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SheduledshiftRecord.fromSnapshot(s));

  static SheduledshiftRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SheduledshiftRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SheduledshiftRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SheduledshiftRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SheduledshiftRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SheduledshiftRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSheduledshiftRecordData({
  String? employeename,
  String? employeelicense,
  String? employeelocation,
  String? employeeimage,
  DocumentReference? shift,
  String? employeemail,
  String? shiftstatus,
  String? employeephonenumber,
  String? shifttitle,
  DateTime? shiftdate,
  DateTime? shiftstarttime,
  DateTime? shiftendtime,
  String? paymentstatus,
  double? amounttopay,
  String? schedulednote,
  String? shiftlocation,
  DocumentReference? userid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'employeename': employeename,
      'employeelicense': employeelicense,
      'employeelocation': employeelocation,
      'employeeimage': employeeimage,
      'shift': shift,
      'employeemail': employeemail,
      'shiftstatus': shiftstatus,
      'employeephonenumber': employeephonenumber,
      'shifttitle': shifttitle,
      'shiftdate': shiftdate,
      'shiftstarttime': shiftstarttime,
      'shiftendtime': shiftendtime,
      'paymentstatus': paymentstatus,
      'amounttopay': amounttopay,
      'schedulednote': schedulednote,
      'shiftlocation': shiftlocation,
      'userid': userid,
    }.withoutNulls,
  );

  return firestoreData;
}

class SheduledshiftRecordDocumentEquality
    implements Equality<SheduledshiftRecord> {
  const SheduledshiftRecordDocumentEquality();

  @override
  bool equals(SheduledshiftRecord? e1, SheduledshiftRecord? e2) {
    return e1?.employeename == e2?.employeename &&
        e1?.employeelicense == e2?.employeelicense &&
        e1?.employeelocation == e2?.employeelocation &&
        e1?.employeeimage == e2?.employeeimage &&
        e1?.shift == e2?.shift &&
        e1?.employeemail == e2?.employeemail &&
        e1?.shiftstatus == e2?.shiftstatus &&
        e1?.employeephonenumber == e2?.employeephonenumber &&
        e1?.shifttitle == e2?.shifttitle &&
        e1?.shiftdate == e2?.shiftdate &&
        e1?.shiftstarttime == e2?.shiftstarttime &&
        e1?.shiftendtime == e2?.shiftendtime &&
        e1?.paymentstatus == e2?.paymentstatus &&
        e1?.amounttopay == e2?.amounttopay &&
        e1?.schedulednote == e2?.schedulednote &&
        e1?.shiftlocation == e2?.shiftlocation &&
        e1?.userid == e2?.userid;
  }

  @override
  int hash(SheduledshiftRecord? e) => const ListEquality().hash([
        e?.employeename,
        e?.employeelicense,
        e?.employeelocation,
        e?.employeeimage,
        e?.shift,
        e?.employeemail,
        e?.shiftstatus,
        e?.employeephonenumber,
        e?.shifttitle,
        e?.shiftdate,
        e?.shiftstarttime,
        e?.shiftendtime,
        e?.paymentstatus,
        e?.amounttopay,
        e?.schedulednote,
        e?.shiftlocation,
        e?.userid
      ]);

  @override
  bool isValidKey(Object? o) => o is SheduledshiftRecord;
}
