import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:techno_saz/res/colors.dart';
import 'package:techno_saz/res/paths.dart';
import 'package:techno_saz/res/strings.dart';
import 'package:techno_saz/screens/nick_name_page.dart';

class LogInTwoPage extends StatelessWidget {
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
                Address.vc_sing_up,
                width: size.width / 1.32716049382716,
                height: size.height / 3.28169014084507,
              ),
              Padding(
                padding: EdgeInsets.only(top: size.height / 8.62962962962963),
                child: Text(
                  Strings.welcome_str,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: size.height / 17.92307692307692),
                child: SizedBox(
                  width: size.width / 2.227979274611399,
                  height: size.height / 18.64,
                  child: Text(
                    textAlign: TextAlign.center,
                    Strings.shouldLogIn_str,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, size.height / 11.65, 0, 0),
                child: Container(
                  width: size.width / 3.071428571428571,
                  height: size.height / 18.64,
                  decoration: BoxDecoration(
                    color: SolidColors.primaryColor,
                    borderRadius: BorderRadius.circular(1000),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NickNamePage(),
                        ),
                      );
                    },
                    child: Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        Strings.letsGo_str,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 24,
                            color: SolidColors.onPrimaryColor),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
