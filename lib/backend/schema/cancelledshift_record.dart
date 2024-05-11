import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class CancelledshiftRecord extends FirestoreRecord {
  CancelledshiftRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "cancalledshift" field.
  String? _cancalledshift;
  String get cancalledshift => _cancalledshift ?? '';
  bool hasCancalledshift() => _cancalledshift != null;

  void _initializeFields() {
    _cancalledshift = snapshotData['cancalledshift'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cancelledshift');

  static Stream<CancelledshiftRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CancelledshiftRecord.fromSnapshot(s));

  static Future<CancelledshiftRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CancelledshiftRecord.fromSnapshot(s));

  static CancelledshiftRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CancelledshiftRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CancelledshiftRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CancelledshiftRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CancelledshiftRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CancelledshiftRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCancelledshiftRecordData({
  String? cancalledshift,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cancalledshift': cancalledshift,
    }.withoutNulls,
  );

  return firestoreData;
}

class CancelledshiftRecordDocumentEquality
    implements Equality<CancelledshiftRecord> {
  const CancelledshiftRecordDocumentEquality();

  @override
  bool equals(CancelledshiftRecord? e1, CancelledshiftRecord? e2) {
    return e1?.cancalledshift == e2?.cancalledshift;
  }

  @override
  int hash(CancelledshiftRecord? e) =>
      const ListEquality().hash([e?.cancalledshift]);

  @override
  bool isValidKey(Object? o) => o is CancelledshiftRecord;
}
