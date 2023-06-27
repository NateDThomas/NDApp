import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

DateTime addDaysToDateTime(int days) {
  var date = DateTime.now().add(Duration(days: days));
  return date;
}

DateTime toDayBeginning(DateTime newdate) {
  var new_date = newdate;
  new_date = new DateTime(new_date.year, new_date.month, new_date.day);
  return new_date;
}
