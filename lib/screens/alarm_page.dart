import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:techno_saz/screens/home_page.dart';

class AlarmPage extends StatelessWidget {
  var instaId;
  AlarmPage(this.instaId);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 450, 0, 0),
        child: Center(
          child: Column(
            children: [
              Text(
                "MyAlarmPage",
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) {
                        return HomePage();
                      },
                    ),
                  );
                },
                child: Text("Next Page"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
