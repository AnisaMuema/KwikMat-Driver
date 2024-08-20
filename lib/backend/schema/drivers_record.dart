import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DriversRecord extends FirestoreRecord {
  DriversRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_location" field.
  LatLng? _userLocation;
  LatLng? get userLocation => _userLocation;
  bool hasUserLocation() => _userLocation != null;

  // "user_uid" field.
  String? _userUid;
  String get userUid => _userUid ?? '';
  bool hasUserUid() => _userUid != null;

  // "driver_location" field.
  LatLng? _driverLocation;
  LatLng? get driverLocation => _driverLocation;
  bool hasDriverLocation() => _driverLocation != null;

  // "driver_uid" field.
  String? _driverUid;
  String get driverUid => _driverUid ?? '';
  bool hasDriverUid() => _driverUid != null;

  // "destination_location" field.
  LatLng? _destinationLocation;
  LatLng? get destinationLocation => _destinationLocation;
  bool hasDestinationLocation() => _destinationLocation != null;

  // "destination_address" field.
  String? _destinationAddress;
  String get destinationAddress => _destinationAddress ?? '';
  bool hasDestinationAddress() => _destinationAddress != null;

  // "user_address" field.
  String? _userAddress;
  String get userAddress => _userAddress ?? '';
  bool hasUserAddress() => _userAddress != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "is_driver_assigned" field.
  bool? _isDriverAssigned;
  bool get isDriverAssigned => _isDriverAssigned ?? false;
  bool hasIsDriverAssigned() => _isDriverAssigned != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "driver_name" field.
  String? _driverName;
  String get driverName => _driverName ?? '';
  bool hasDriverName() => _driverName != null;

  void _initializeFields() {
    _userLocation = snapshotData['user_location'] as LatLng?;
    _userUid = snapshotData['user_uid'] as String?;
    _driverLocation = snapshotData['driver_location'] as LatLng?;
    _driverUid = snapshotData['driver_uid'] as String?;
    _destinationLocation = snapshotData['destination_location'] as LatLng?;
    _destinationAddress = snapshotData['destination_address'] as String?;
    _userAddress = snapshotData['user_address'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _isDriverAssigned = snapshotData['is_driver_assigned'] as bool?;
    _userName = snapshotData['user_name'] as String?;
    _driverName = snapshotData['driver_name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Drivers');

  static Stream<DriversRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DriversRecord.fromSnapshot(s));

  static Future<DriversRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DriversRecord.fromSnapshot(s));

  static DriversRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DriversRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DriversRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DriversRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DriversRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DriversRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDriversRecordData({
  LatLng? userLocation,
  String? userUid,
  LatLng? driverLocation,
  String? driverUid,
  LatLng? destinationLocation,
  String? destinationAddress,
  String? userAddress,
  String? displayName,
  String? phoneNumber,
  bool? isDriverAssigned,
  String? userName,
  String? driverName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_location': userLocation,
      'user_uid': userUid,
      'driver_location': driverLocation,
      'driver_uid': driverUid,
      'destination_location': destinationLocation,
      'destination_address': destinationAddress,
      'user_address': userAddress,
      'display_name': displayName,
      'phone_number': phoneNumber,
      'is_driver_assigned': isDriverAssigned,
      'user_name': userName,
      'driver_name': driverName,
    }.withoutNulls,
  );

  return firestoreData;
}

class DriversRecordDocumentEquality implements Equality<DriversRecord> {
  const DriversRecordDocumentEquality();

  @override
  bool equals(DriversRecord? e1, DriversRecord? e2) {
    return e1?.userLocation == e2?.userLocation &&
        e1?.userUid == e2?.userUid &&
        e1?.driverLocation == e2?.driverLocation &&
        e1?.driverUid == e2?.driverUid &&
        e1?.destinationLocation == e2?.destinationLocation &&
        e1?.destinationAddress == e2?.destinationAddress &&
        e1?.userAddress == e2?.userAddress &&
        e1?.displayName == e2?.displayName &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.isDriverAssigned == e2?.isDriverAssigned &&
        e1?.userName == e2?.userName &&
        e1?.driverName == e2?.driverName;
  }

  @override
  int hash(DriversRecord? e) => const ListEquality().hash([
        e?.userLocation,
        e?.userUid,
        e?.driverLocation,
        e?.driverUid,
        e?.destinationLocation,
        e?.destinationAddress,
        e?.userAddress,
        e?.displayName,
        e?.phoneNumber,
        e?.isDriverAssigned,
        e?.userName,
        e?.driverName
      ]);

  @override
  bool isValidKey(Object? o) => o is DriversRecord;
}
