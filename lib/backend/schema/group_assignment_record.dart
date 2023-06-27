import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GroupAssignmentRecord extends FirestoreRecord {
  GroupAssignmentRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "createdby" field.
  DocumentReference? _createdby;
  DocumentReference? get createdby => _createdby;
  bool hasCreatedby() => _createdby != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "due_date" field.
  DateTime? _dueDate;
  DateTime? get dueDate => _dueDate;
  bool hasDueDate() => _dueDate != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "is_marked" field.
  bool? _isMarked;
  bool get isMarked => _isMarked ?? false;
  bool hasIsMarked() => _isMarked != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _createdby = snapshotData['createdby'] as DocumentReference?;
    _title = snapshotData['title'] as String?;
    _dueDate = snapshotData['due_date'] as DateTime?;
    _description = snapshotData['description'] as String?;
    _isMarked = snapshotData['is_marked'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('group_assignment')
          : FirebaseFirestore.instance.collectionGroup('group_assignment');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('group_assignment').doc();

  static Stream<GroupAssignmentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GroupAssignmentRecord.fromSnapshot(s));

  static Future<GroupAssignmentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GroupAssignmentRecord.fromSnapshot(s));

  static GroupAssignmentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GroupAssignmentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GroupAssignmentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GroupAssignmentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GroupAssignmentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GroupAssignmentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGroupAssignmentRecordData({
  DocumentReference? createdby,
  String? title,
  DateTime? dueDate,
  String? description,
  bool? isMarked,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'createdby': createdby,
      'title': title,
      'due_date': dueDate,
      'description': description,
      'is_marked': isMarked,
    }.withoutNulls,
  );

  return firestoreData;
}
