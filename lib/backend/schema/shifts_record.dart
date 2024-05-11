import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ShiftsRecord extends FirestoreRecord {
  ShiftsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "manager" field.
  DocumentReference? _manager;
  DocumentReference? get manager => _manager;
  bool hasManager() => _manager != null;

  void _initializeFields() {
    _manager = snapshotData['manager'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('shifts');

  static Stream<ShiftsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ShiftsRecord.fromSnapshot(s));

  static Future<ShiftsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ShiftsRecord.fromSnapshot(s));

  static ShiftsRecord fromSnapshot(DocumentSnapshot snapshot) => ShiftsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ShiftsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ShiftsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ShiftsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ShiftsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createShiftsRecordData({
  DocumentReference? manager,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'manager': manager,
    }.withoutNulls,
  );

  return firestoreData;
}

class ShiftsRecordDocumentEquality implements Equality<ShiftsRecord> {
  const ShiftsRecordDocumentEquality();

  @override
  bool equals(ShiftsRecord? e1, ShiftsRecord? e2) {
    return e1?.manager == e2?.manager;
  }

  @override
  int hash(ShiftsRecord? e) => const ListEquality().hash([e?.manager]);

  @override
  bool isValidKey(Object? o) => o is ShiftsRecord;
}
