import 'package:flutter/material.dart';
import 'package:salon/elements/lodingbar.dart';
import 'package:salon/Screens/splashScreen.dart';
import 'package:salon/Screens/user/addToFav.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:salon/Screens/admin/payments.dart';
import 'package:salon/Screens/salon/homepage.dart';
import 'package:salon/Screens/user/mybooking.dart';
import 'package:salon/Screens/admin/userrinfo.dart';
import 'package:salon/Screens/admin/adminhome.dart';
import 'package:salon/Screens/user/searchPage.dart';
import 'package:salon/Screens/admin/editBanner.dart';
import 'package:salon/Screens/admin/adsRequest.dart';
import 'package:salon/Screens/admin/ListOfUser.dart';
import 'package:salon/Screens/admin/ListOfSalon.dart';
import 'package:salon/Screens/salon/profilepage.dart';
import 'package:salon/Screens/salon/bookinglist.dart';
import 'package:salon/Screens/user/homepageuser.dart';
import 'package:salon/Screens/salon/notification.dart';
import 'package:salon/Screens/salon/reviewscreen.dart';
import 'package:salon/Screens/user/saloninfopage.dart';
import 'package:salon/Screens/salon/adsandservice.dart';
import 'package:salon/Screens/user/payment/payment.dart';
import 'package:salon/Screens/user/bookAppointmentB.dart';
import 'package:salon/Screens/user/bookAppointmentA.dart';
import 'package:salon/Screens/salon/bookappointment.dart';
import 'package:salon/Screens/admin/boookingSettings.dart';
import 'package:salon/Screens/salon/managespecialist.dart';
import 'package:salon/Screens/authscreens/newAccount.dart';
import 'package:salon/Screens/admin/appointmentbooked.dart';
import 'package:salon/Screens/authscreens/loginscreen.dart';
import 'package:salon/Screens/guideScreen/guidescreen.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:salon/Screens/salonRegister/registerSalonD.dart';
import 'package:salon/Screens/salonRegister/registerSalonC.dart';
import 'package:salon/Screens/salonRegister/registerSalonB.dart';
import 'package:salon/Screens/salonRegister/registerSalonA.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyD8v-g4Iv8YEVOKaDe9adpxLRkptC-77SY",
          appId: "1:679967444799:android:f62de969b36f73a35c4d8a",
          messagingSenderId: "679967444799",
          storageBucket: "gs://ziggly-60826.appspot.com",
          projectId: "ziggly-60826"));

  FirebaseAppCheck.instance.activate();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ziggly Salon',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SpalshScreen(),
    );
  }
}
