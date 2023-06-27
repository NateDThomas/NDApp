import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChildrenRecord extends FirestoreRecord {
  ChildrenRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_reference" field.
  DocumentReference? _userReference;
  DocumentReference? get userReference => _userReference;
  bool hasUserReference() => _userReference != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _userReference = snapshotData['user_reference'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('children')
          : FirebaseFirestore.instance.collectionGroup('children');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('children').doc();

  static Stream<ChildrenRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChildrenRecord.fromSnapshot(s));

  static Future<ChildrenRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChildrenRecord.fromSnapshot(s));

  static ChildrenRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChildrenRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChildrenRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChildrenRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChildrenRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChildrenRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChildrenRecordData({
  DocumentReference? userReference,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_reference': userReference,
    }.withoutNulls,
  );

  return firestoreData;
}
