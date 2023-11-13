import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:techno_saz/res/colors.dart';
import 'package:techno_saz/res/data_class.dart';
import 'package:techno_saz/res/paths.dart';
import 'package:techno_saz/res/strings.dart';

class NickNamePage extends StatelessWidget {
  TextEditingController nickName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                  Strings.verifiedEmail_str,
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
                  Strings.complateLogInInfo_str,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                      height: 1.5,
                      color: SolidColors.textColor),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(size.width / 11.02,
                      size.height / 34.51, size.width / 11.02, 0),
                  child: TextField(
                    controller: nickName,
                    textDirection: TextDirection.rtl,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: size.height / 40, horizontal: 10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            BorderSide(color: SolidColors.black, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            color: SolidColors.primaryColor, width: 2),
                      ),
                      hintText: Strings.nickname_str,
                      suffixIconConstraints: BoxConstraints(
                        maxHeight: 48.0,
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SvgPicture.asset(
                          Adress.ic_nickName_eadite,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: size.height / 19.41,
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Text(
                  textAlign: TextAlign.center,
                  Strings.choseFavorite_str,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                      height: 1.5,
                      color: SolidColors.textColor),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: size.height / 25.88),
                child: Container(
                  color: Colors.amber,
                  width: size.width / 1.11,
                  height: size.height / 11.79,
                  child: GridView.builder(
                      itemCount: Data_Class.tagList.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: ClampingScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      childAspectRatio: 0.3,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                      ),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(color: SolidColors.primaryColor,
                            borderRadius: BorderRadius.circular(1000))
                            ,child: Padding(
            padding: const EdgeInsets.fromLTRB(2, 0, 4, 0),
            child: Container(
              decoration: BoxDecoration(
                color: SolidColors.primaryColor,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 8, 12, 4),
                    child: Text(
                      "# ",
                      style: TextStyle(
                          color: SolidColors.onPrimaryColor,
                          fontSize: 17,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 2, 0, 0),
                    child: Text(
                      Data_Class.tagList[index].title,
                      style: TextStyle(
                          color: SolidColors.onPrimaryColor,
                          fontSize: 17,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ],
              ),
            ),
          ),
                            
                            
                            
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
