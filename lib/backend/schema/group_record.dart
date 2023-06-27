import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GroupRecord extends FirestoreRecord {
  GroupRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "members" field.
  List<DocumentReference>? _members;
  List<DocumentReference> get members => _members ?? const [];
  bool hasMembers() => _members != null;

  // "color" field.
  Color? _color;
  Color? get color => _color;
  bool hasColor() => _color != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "owner_name" field.
  String? _ownerName;
  String get ownerName => _ownerName ?? '';
  bool hasOwnerName() => _ownerName != null;

  // "group_image" field.
  String? _groupImage;
  String get groupImage => _groupImage ?? '';
  bool hasGroupImage() => _groupImage != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  bool hasCode() => _code != null;

  void _initializeFields() {
    _owner = snapshotData['owner'] as DocumentReference?;
    _members = getDataList(snapshotData['members']);
    _color = getSchemaColor(snapshotData['color']);
    _title = snapshotData['title'] as String?;
    _ownerName = snapshotData['owner_name'] as String?;
    _groupImage = snapshotData['group_image'] as String?;
    _code = snapshotData['code'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('group');

  static Stream<GroupRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GroupRecord.fromSnapshot(s));

  static Future<GroupRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GroupRecord.fromSnapshot(s));

  static GroupRecord fromSnapshot(DocumentSnapshot snapshot) => GroupRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GroupRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GroupRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GroupRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GroupRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGroupRecordData({
  DocumentReference? owner,
  Color? color,
  String? title,
  String? ownerName,
  String? groupImage,
  String? code,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'owner': owner,
      'color': color,
      'title': title,
      'owner_name': ownerName,
      'group_image': groupImage,
      'code': code,
    }.withoutNulls,
  );

  return firestoreData;
}
