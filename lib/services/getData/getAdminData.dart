import 'package:flutter/widgets.dart';
import 'package:geolocator/geolocator.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:salon/services/auth/getUser.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<dynamic> GetAdminData() async {
  try {
    var user = await getCurrentUser();

    // var snapshot = await FirebaseFirestore.instance
    //     .collection("Notification")
    //     .where("from", isEqualTo: user!.uid)
    //     .orderBy("timestamp", descending: true)
    //     .get();

    var snapshot = await FirebaseFirestore.instance
        .collection("users")
        .where("isAdmin", isEqualTo: true)
        .orderBy("timestamp", descending: true)
        .get();

    print(snapshot.docs.length);

    if (snapshot.docs.isNotEmpty) {
      return snapshot.docs;
    } else {
      // Return null if document doesn't exist
      return null;
    }
  } catch (error) {
    // Handle errors, you can print or log the error here
    print("Error fetching user by id: $error");
    return null;
  }
}
