import 'package:flutter/material.dart';
import 'package:salon/elements/topbar.dart';
import 'package:salon/elements/salonCardland.dart';
import 'package:salon/elements/salonappointmentcard.dart';

class AddToFav extends StatefulWidget {
  const AddToFav({super.key});

  @override
  State<AddToFav> createState() => _AddToFavState();
}

class _AddToFavState extends State<AddToFav> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            TopBarLabel(label: "Saved"),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.85,
              child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return SalonCardLand(
                      salondata: {},
                      isFav: true,
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
