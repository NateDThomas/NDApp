import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventRecord extends FirestoreRecord {
  EventRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_creator" field.
  DocumentReference? _userCreator;
  DocumentReference? get userCreator => _userCreator;
  bool hasUserCreator() => _userCreator != null;

  // "group_event_link" field.
  DocumentReference? _groupEventLink;
  DocumentReference? get groupEventLink => _groupEventLink;
  bool hasGroupEventLink() => _groupEventLink != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "start_time" field.
  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  bool hasStartTime() => _startTime != null;

  // "end_time" field.
  DateTime? _endTime;
  DateTime? get endTime => _endTime;
  bool hasEndTime() => _endTime != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "creator_profile" field.
  String? _creatorProfile;
  String get creatorProfile => _creatorProfile ?? '';
  bool hasCreatorProfile() => _creatorProfile != null;

  // "creator_name" field.
  String? _creatorName;
  String get creatorName => _creatorName ?? '';
  bool hasCreatorName() => _creatorName != null;

  void _initializeFields() {
    _userCreator = snapshotData['user_creator'] as DocumentReference?;
    _groupEventLink = snapshotData['group_event_link'] as DocumentReference?;
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _startTime = snapshotData['start_time'] as DateTime?;
    _endTime = snapshotData['end_time'] as DateTime?;
    _date = snapshotData['date'] as DateTime?;
    _creatorProfile = snapshotData['creator_profile'] as String?;
    _creatorName = snapshotData['creator_name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('event');

  static Stream<EventRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventRecord.fromSnapshot(s));

  static Future<EventRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventRecord.fromSnapshot(s));

  static EventRecord fromSnapshot(DocumentSnapshot snapshot) => EventRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventRecordData({
  DocumentReference? userCreator,
  DocumentReference? groupEventLink,
  String? title,
  String? description,
  DateTime? startTime,
  DateTime? endTime,
  DateTime? date,
  String? creatorProfile,
  String? creatorName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_creator': userCreator,
      'group_event_link': groupEventLink,
      'title': title,
      'description': description,
      'start_time': startTime,
      'end_time': endTime,
      'date': date,
      'creator_profile': creatorProfile,
      'creator_name': creatorName,
    }.withoutNulls,
  );

  return firestoreData;
}
