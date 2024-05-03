import 'package:flutter/material.dart';
import 'package:salon/elements/alertbox.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:salon/Screens/salon/homepage.dart';
import 'package:salon/Screens/admin/adminhome.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:salon/Screens/user/homepageuser.dart';
import 'package:salon/services/utility/changeScreen.dart';
import 'package:salon/Screens/authscreens/newAccount.dart';
import 'package:salon/Screens/salonRegister/registerSalonA.dart';

Future<bool> checkUserindb(BuildContext context) async {
  var cp = FirebaseAuth.instance.currentUser;

  alertBox(context);
  var cu = await FirebaseFirestore.instance
      .collection("users")
      .where("uid", isEqualTo: cp!.uid.toString())
      .get()
      .then((value) {
    if (value.docs.isEmpty) {
      print("User not in database");

      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return const newAccount();
      }));
      return true;
    } else {
      print("User Found in database");

      var data = value.docs.first.data() as dynamic;

      if (data["role"].toString().toLowerCase() == "user" && data["isUser"]) {
        replaceScreen(context, HomePageUser());
      } else {
        if (data["role"].toString().toLowerCase() == "salon" &&
            data["isSalon"]) {
          replaceScreen(context, SalonHomePage());
        } else if (data["role"].toString().toLowerCase() == "admin" &&
            data["isAdmin"]) {
          nextScreen(context, AdminHome());
        }
      }

      return false;
    }
  });
  return false;
}
