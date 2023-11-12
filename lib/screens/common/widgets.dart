
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:techno_saz/res/colors.dart';
import 'package:techno_saz/screens/home_page.dart';

Future customDialoge(
  BuildContext context, {
  final GestureTapCallback? onTap,
  final List<Widget>? actions,
  // Flash? i,
  var arguments,
}) {
  //var flashObserver = i;
  return showDialog(
    context: context,
    builder: (context) {
      Timer.periodic(Duration(milliseconds: 500), (timer) {
        
        
        if (timer.tick == 500) {
          timer.cancel();
        }
      });
      Timer(
        Duration(seconds: 5),
        () {
          Navigator.pop(context);
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()),);
        },
      );
      final high = MediaQuery.of(context).size.width;
      return AlertDialog(
        scrollable: true,
        actions: actions,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(36)),
        content: SingleChildScrollView(
          child: Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            width: high / 6 * 3,
            child: FittedBox(
              child: Column(
                children: [
                  
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(42),
                        decoration:BoxDecoration(
                          color: SolidColors.primaryColor,
                          shape: BoxShape.circle
                        )
                         
                      ),
                      Icon(Icons.person, size: 50, color:Colors.white)
                    ],
                  ),
                  SizedBox(height: 15,),
                  
                  Text('تبریک!' ,style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 24),),
                  SizedBox(height: 10),
                  Text(
                    '\nحساب شما آماده استفاده است.\n در عرض چند ثانیه به صفحه اصلی \nهدایت خواهید شد',
                    textAlign: TextAlign.center,
                    
                  ),
                  SizedBox(height: 15),
                  SpinKitCircle(
              size: 40,
              color:SolidColors.primaryColor,

            )
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}
