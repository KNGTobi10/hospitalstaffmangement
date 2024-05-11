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

String getStringBasedOnTime() {
  var hour = DateTime.now().hour;
  if (hour < 12) {
    return 'Morning!';
  }
  if (hour < 17) {
    return 'Afternoon!';
  }
  return 'Evening!';
}

double? newCustomFunction(double total) {
  // I need a code to add the total price in a collection
// Access the collection
  final collection = FirebaseFirestore.instance.collection('orders');

  // Calculate the total price
  double totalPrice = 0.0;
  collection.get().then((querySnapshot) {
    querySnapshot.docs.forEach((doc) {
      totalPrice += doc.data()['price'];
    });
  });

  // Add the total price to a new document in the collection
  collection.add({'totalPrice': totalPrice});

  // Return the total price
  return totalPrice;
}
