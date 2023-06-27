import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GroupAnnouncementRecord extends FirestoreRecord {
  GroupAnnouncementRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "createdby" field.
  DocumentReference? _createdby;
  DocumentReference? get createdby => _createdby;
  bool hasCreatedby() => _createdby != null;

  // "created_date" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "creator_name" field.
  String? _creatorName;
  String get creatorName => _creatorName ?? '';
  bool hasCreatorName() => _creatorName != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _createdby = snapshotData['createdby'] as DocumentReference?;
    _createdDate = snapshotData['created_date'] as DateTime?;
    _creatorName = snapshotData['creator_name'] as String?;
    _description = snapshotData['description'] as String?;
    _title = snapshotData['title'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('group_announcement')
          : FirebaseFirestore.instance.collectionGroup('group_announcement');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('group_announcement').doc();

  static Stream<GroupAnnouncementRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GroupAnnouncementRecord.fromSnapshot(s));

  static Future<GroupAnnouncementRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => GroupAnnouncementRecord.fromSnapshot(s));

  static GroupAnnouncementRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GroupAnnouncementRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GroupAnnouncementRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GroupAnnouncementRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GroupAnnouncementRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GroupAnnouncementRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGroupAnnouncementRecordData({
  DocumentReference? createdby,
  DateTime? createdDate,
  String? creatorName,
  String? description,
  String? title,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'createdby': createdby,
      'created_date': createdDate,
      'creator_name': creatorName,
      'description': description,
      'title': title,
    }.withoutNulls,
  );

  return firestoreData;
}
