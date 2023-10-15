import 'package:flutter/material.dart';
import 'package:techno_saz/screens/appBar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: appBar(),
        ),
      ),
    );
  }
}
