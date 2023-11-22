import 'dart:async';


import 'package:flutter/material.dart';
import 'package:techno_saz/screens/home_page.dart';

customeDialogee(
  BuildContext context, {
  final GestureTapCallback? onTap,
  final List<Widget>? actions,
}) {
  return showDialog(
      context: context,
      builder: (context) {
        Timer(
          Duration
          (seconds: 5),
          () {
            Navigator.pop(context);
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
        );
        final sizeW = MediaQuery.of(context).size.width;
        return AlertDialog(scrollable:true ,actions:actions,);
      });
}
