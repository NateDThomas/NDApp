import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GroupEventRecord extends FirestoreRecord {
  GroupEventRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "createdby" field.
  DocumentReference? _createdby;
  DocumentReference? get createdby => _createdby;
  bool hasCreatedby() => _createdby != null;

  // "event_link" field.
  DocumentReference? _eventLink;
  DocumentReference? get eventLink => _eventLink;
  bool hasEventLink() => _eventLink != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _createdby = snapshotData['createdby'] as DocumentReference?;
    _eventLink = snapshotData['event_link'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('group_event')
          : FirebaseFirestore.instance.collectionGroup('group_event');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('group_event').doc();

  static Stream<GroupEventRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GroupEventRecord.fromSnapshot(s));

  static Future<GroupEventRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GroupEventRecord.fromSnapshot(s));

  static GroupEventRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GroupEventRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GroupEventRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GroupEventRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GroupEventRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GroupEventRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGroupEventRecordData({
  DocumentReference? createdby,
  DocumentReference? eventLink,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'createdby': createdby,
      'event_link': eventLink,
    }.withoutNulls,
  );

  return firestoreData;
}
