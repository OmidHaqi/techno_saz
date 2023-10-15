import 'package:flutter/material.dart';
import 'package:techno_saz/screens/alarm_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 450, 0, 0),
        child: Center(
          child: Column(
            children: [
              Text(
                "MyHomePage",
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context){
                          return AlarmPage();
                        },
                      ),
                    );
                  },
                  child: Text("Next Page"))
            ],
          ),
        ),
      ),
    );
  }
}
