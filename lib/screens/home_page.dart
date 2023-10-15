import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 300, 0, 0),
        child: Center(
          child: Column(
            children: [
              Text(
                "MyHomePage",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
