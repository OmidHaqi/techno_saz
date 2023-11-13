import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:techno_saz/res/colors.dart';
import 'package:techno_saz/res/paths.dart';
import 'package:techno_saz/res/strings.dart';

class NickNamePage extends StatelessWidget {
  TextEditingController nickName = TextEditingController();
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
                Adress.vc_nick_name_pic,
                width: size.width / 1.32716049382716,
                height: size.height / 3.28169014084507,
              ),
              Padding(
                padding: EdgeInsets.only(top: size.height / 21.67441860465116),
                child: Text(
                  Strings.verifiedEmail,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                      color: SolidColors.textColor),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: size.height / 100),
                child: Text(
                  textAlign: TextAlign.center,
                  Strings.complateLogInInfo,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                      height: 1.5,
                      color: SolidColors.textColor),
                ),
              ),
              TextField(
                controller: nickName,
                textDirection: TextDirection.rtl,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: SolidColors.primaryColor),
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
