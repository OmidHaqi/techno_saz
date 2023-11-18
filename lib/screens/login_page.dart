import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:techno_saz/res/colors.dart';
import 'package:techno_saz/res/paths.dart';
import 'package:techno_saz/res/strings.dart';
import 'package:techno_saz/screens/common/widgets.dart';

class LogInPage extends StatelessWidget {
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
                Address.welcom_vc,
                width: size.width / 1.72,
                height: size.height / 3.728,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, size.height / 18.64, 0, 0),
                child: Text(
                  Strings.letsGo_str,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 48,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(
                    0, size.height / 21.674418, 0, size.height / 109.647058823),
                width: size.width / 1.0969387,
                height: size.height / 14.5625,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 242, 242, 242),
                  borderRadius: BorderRadius.circular(1000),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Strings.byGoogle_str,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: SolidColors.textColor),
                    ),
                    SizedBox(
                      width: size.width / 16.53846153846154,
                    ),
                    SvgPicture.asset(Address.ic_gmail)
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, size.height / 109.647058823, 0,
                    size.height / 109.647058823),
                width: size.width / 1.0969387,
                height: size.height / 14.5625,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 242, 242, 242),
                  borderRadius: BorderRadius.circular(1000),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Strings.byEmail_str,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: SolidColors.textColor),
                    ),
                    SizedBox(
                      width: size.width / 16.53846153846154,
                    ),
                    SvgPicture.asset(Address.ic_mail)
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  customDialoge(context);
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, size.height / 109.647058823, 0,
                      size.height / 25.88888888888889),
                  width: size.width / 1.0969387,
                  height: size.height / 14.5625,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 242, 242, 242),
                    borderRadius: BorderRadius.circular(1000),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        Strings.skip_str,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: SolidColors.textColor),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: size.width / 35.83333333333333),
                    child: Container(
                      width: size.width / 2.4,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black,
                            width: 1.5,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    Strings.or_str,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(right: size.width / 35.83333333333333),
                    child: Container(
                      width: size.width / 2.4,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black,
                            width: 1.5,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.fromLTRB(
                    0, size.height / 34.51851851851852, 0, 0),
                width: size.width / 1.1969387,
                height: size.height / 16.5625,
                decoration: BoxDecoration(
                  color: SolidColors.primaryColor,
                  borderRadius: BorderRadius.circular(1000),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Strings.enterPassword_str,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          color: SolidColors.onPrimaryColor),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: size.height / 75),
                child: Text(
                  Strings.creatAccont,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: SolidColors.primaryColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
