import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:techno_saz/screens/alarm_page.dart';

class HomePage extends StatelessWidget {
  
  TextEditingController InstagramId = TextEditingController();
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
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: TextField(
                  controller: InstagramId,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                     
                      
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.blue)
                      
                    ),
                    label: Text("instagram")
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) {
                          return AlarmPage(InstagramId.text);
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
