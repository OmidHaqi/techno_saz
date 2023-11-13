import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:techno_saz/res/colors.dart';
import 'package:techno_saz/res/paths.dart';
import 'package:techno_saz/res/strings.dart';

class LogInTwoPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, size.height / 7.831, 0, 0),
          child: Column(
            children: [
              SvgPicture.asset(
                Adress.vc_sing_up,
                width: size.width / 1.32716049382716,
                height: size.height / 3.28169014084507,
              ),
              Padding(
                padding: EdgeInsets.only(top: size.height / 8.62962962962963),
                child: Text(
                  Strings.welcome,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: SolidColors.textColor),
                ),
              ),
             
              Padding(
                padding:  EdgeInsets.only(top: size.height/17.92307692307692 ),
                child: SizedBox(
                  width: size.width/2.227979274611399,height: size.height/18.64,
                  child: Text(
                    textAlign: TextAlign.center,
                    Strings.shouldLogIn,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,height: 1.5,
                        color: SolidColors.textColor),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(
                    0, size.height / 11.65, 0, 0),
                width: size.width / 3.071428571428571,
                height: size.height / 18.64,
                decoration: BoxDecoration(
                  color: SolidColors.primaryColor,
                  borderRadius: BorderRadius.circular(1000),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Strings.letsGo_str,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          color: SolidColors.onPrimaryColor),
                    ),
                  ],
                ),
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}