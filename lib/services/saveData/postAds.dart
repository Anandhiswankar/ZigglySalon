import 'package:flutter/widgets.dart';
import 'package:geolocator/geolocator.dart';
import 'package:salon/elements/alertbox.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:salon/elements/warningbox.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:salon/services/auth/getUser.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

postAdsFirestore(BuildContext context, dynamic data) async {
  var user = await getCurrentUser();

  FirebaseFirestore.instance
      .collection("salons")
      .doc(user!.uid)
      .collection("Ads")
      .add(data)
      .then((value) {
    warningBox(context, "Posted");
  }).catchError((onError) {
    print("Error to add post: " + onError);
    warningBox(context, "Error to post Ads: " + onError.toString());
  });
}
