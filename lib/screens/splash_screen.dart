import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:techno_saz/screens/main_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    @override
    void initState() {
      Future.delayed(const Duration(seconds: 5)).then((value) {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const MainPage(),
          ),
        );
      });

      super.initState();
    }

    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 55, 0, 0),
                  child: SvgPicture.asset(
                    "assets/images/img_splash_screen.svg",
                    width: 200,
                    height: 200,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Text(
                    "تکنوساز",
                    style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 350,
                ),
                const SpinKitCircle(
                  // itemBuilder: (BuildContext context, int index) {
                  //   return DecoratedBox(
                  //     decoration: BoxDecoration(
                  //       color: Color.fromARGB(255, 82, 45, 19) ,
                  //     ),
                  //   );
                  //},
                  color: Color.fromARGB(255, 82, 45, 19),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: Text("Made by D.U"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
