import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserRecord extends FirestoreRecord {
  UserRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "isadmin" field.
  bool? _isadmin;
  bool get isadmin => _isadmin ?? false;
  bool hasIsadmin() => _isadmin != null;

  // "isteacher" field.
  bool? _isteacher;
  bool get isteacher => _isteacher ?? false;
  bool hasIsteacher() => _isteacher != null;

  // "isstudent" field.
  bool? _isstudent;
  bool get isstudent => _isstudent ?? false;
  bool hasIsstudent() => _isstudent != null;

  // "isparent" field.
  bool? _isparent;
  bool get isparent => _isparent ?? false;
  bool hasIsparent() => _isparent != null;

  // "isguest" field.
  bool? _isguest;
  bool get isguest => _isguest ?? false;
  bool hasIsguest() => _isguest != null;

  // "firstname" field.
  String? _firstname;
  String get firstname => _firstname ?? '';
  bool hasFirstname() => _firstname != null;

  // "lastname" field.
  String? _lastname;
  String get lastname => _lastname ?? '';
  bool hasLastname() => _lastname != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _isadmin = snapshotData['isadmin'] as bool?;
    _isteacher = snapshotData['isteacher'] as bool?;
    _isstudent = snapshotData['isstudent'] as bool?;
    _isparent = snapshotData['isparent'] as bool?;
    _isguest = snapshotData['isguest'] as bool?;
    _firstname = snapshotData['firstname'] as String?;
    _lastname = snapshotData['lastname'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user');

  static Stream<UserRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserRecord.fromSnapshot(s));

  static Future<UserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserRecord.fromSnapshot(s));

  static UserRecord fromSnapshot(DocumentSnapshot snapshot) => UserRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserRecordData({
  String? email,
  String? photoUrl,
  String? uid,
  String? phoneNumber,
  bool? isadmin,
  bool? isteacher,
  bool? isstudent,
  bool? isparent,
  bool? isguest,
  String? firstname,
  String? lastname,
  String? displayName,
  DateTime? createdTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'photo_url': photoUrl,
      'uid': uid,
      'phone_number': phoneNumber,
      'isadmin': isadmin,
      'isteacher': isteacher,
      'isstudent': isstudent,
      'isparent': isparent,
      'isguest': isguest,
      'firstname': firstname,
      'lastname': lastname,
      'display_name': displayName,
      'created_time': createdTime,
    }.withoutNulls,
  );

  return firestoreData;
}
