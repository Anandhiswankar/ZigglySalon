import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:salon/elements/color.dart';
import 'package:salon/elements/topbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salon/elements/appointmentcard.dart';
import 'package:salon/Screens/salon/bookinglist.dart';
import 'package:salon/elements/adminAppointmentCard.dart';

class Appointmentbooked extends StatefulWidget {
  bool isTom;
  final dynamic bookingData;
  Appointmentbooked({super.key, this.isTom = false, this.bookingData});

  @override
  State<Appointmentbooked> createState() => _AppointmentbookedState();
}

class _AppointmentbookedState extends State<Appointmentbooked> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  dynamic allBooking = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            TopBarLabel(label: "Booking"),
            // Container(
            //   width: MediaQuery.of(context).size.width,
            //   height: 60,
            //   padding: EdgeInsets.all(5),
            //   child: SingleChildScrollView(
            //     scrollDirection: Axis.horizontal,
            //     child: Row(
            //       children: [
            //         ElevatedButton(
            //             style: ElevatedButton.styleFrom(
            //                 backgroundColor: Colors.black,
            //                 foregroundColor: Colors.white),
            //             onPressed: () {},
            //             child: Text("All")),
            //         SizedBox(
            //           width: 10,
            //         ),
            //         ElevatedButton(
            //             style: ElevatedButton.styleFrom(
            //                 backgroundColor: primeColor,
            //                 foregroundColor: Colors.white),
            //             onPressed: () {},
            //             child: Text("Pending")),
            //         SizedBox(
            //           width: 10,
            //         ),
            //         ElevatedButton(
            //             style: ElevatedButton.styleFrom(
            //                 backgroundColor: primeColor,
            //                 foregroundColor: Colors.white),
            //             onPressed: () {},
            //             child: Text("Upcomming")),
            //         SizedBox(
            //           width: 10,
            //         ),
            //         !widget.isTom
            //             ? ElevatedButton(
            //                 style: ElevatedButton.styleFrom(
            //                     backgroundColor: primeColor,
            //                     foregroundColor: Colors.white),
            //                 onPressed: () {},
            //                 child: Text("Completed"))
            //             : SizedBox()
            //       ],
            //     ),
            //   ),
            // ),
            Expanded(
              child: Container(
                child: ListView.builder(
                    itemCount: widget.bookingData.length,
                    itemBuilder: (context, index) {
                      return AppointmentCardAdmin(
                        bookingData: widget.bookingData![index],
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
