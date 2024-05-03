import 'package:flutter/material.dart';
import 'package:salon/elements/lodingbar.dart';

alertBox(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return LodingBarElement(); // Show the loading popup
    },
  );
}
