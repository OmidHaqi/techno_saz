import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:techno_saz/res/colors.dart';
import 'package:techno_saz/res/data_class.dart';
import 'package:techno_saz/res/paths.dart';
import 'package:techno_saz/res/strings.dart';
import 'package:techno_saz/screens/home_page.dart';

// ignore: must_be_immutable
class NickNamePage extends StatelessWidget {
  TextEditingController nickName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, size.height / 7.831, 0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                SvgPicture.asset(
                  Adress.vc_nick_name_pic,
                  width: size.width / 1.32716049382716,
                  height: size.height / 3.28169014084507,
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: size.height / 21.67441860465116),
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
                    color: const Color.fromARGB(255, 255, 255, 255),
                    width: size.width / 1.11,
                    height: size.height / 11.79,
                    child: GridView.builder(
                        itemCount: Data_Class.tagList.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
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
                              decoration: BoxDecoration(
                                  color: SolidColors.primaryColor,
                                  borderRadius: BorderRadius.circular(1000)),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(2, 0, 4, 0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: SolidColors.primaryColor,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 8, 12, 4),
                                        child: Text(
                                          "# ",
                                          style: TextStyle(
                                              color: SolidColors.onPrimaryColor,
                                              fontSize: 17,
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            12, 2, 0, 0),
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
                Padding(
                  padding: EdgeInsets.fromLTRB(0, size.height / 18, 0, 0),
                  child: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        showDragHandle: true,
                        context: context,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24.0),
                            topRight: Radius.circular(24.0),
                          ),
                        ),
                        builder: (BuildContext context) {
                          return Container(
                            height: 500,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 1, 10, 0),
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        top: BorderSide(
                                          color: SolidColors.primaryColor,
                                          width: 1.5,
                                        ),
                                        right: BorderSide(
                                          color: const Color.fromRGBO(
                                              164, 99, 77, 1),
                                          width: 1.5,
                                        ),
                                        left: BorderSide(
                                          color: const Color.fromRGBO(
                                              164, 99, 77, 1),
                                          width: 1.5,
                                        ),
                                        bottom: BorderSide(
                                          color: const Color.fromRGBO(
                                              164, 99, 77, 1),
                                          width: 0,
                                        )),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(16.0),
                                      topRight: Radius.circular(16.0),
                                    )),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            size.width / 6.05,
                                            0,
                                            size.width / 6.05,
                                            0),
                                        child: SvgPicture.asset(
                                          Adress.vc_email_butommsheet_Email,
                                          // width: size.width / 1.64,
                                          // height: size.height / 3.14,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: size.height / 42.8),
                                        child: Text(
                                          Strings.enter_your_email_str,
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            size.width / 11.02,
                                            size.height / 34.51,
                                            size.width / 11.02,
                                            0),
                                        child: TextField(
                                          controller: nickName,
                                          textDirection: TextDirection.rtl,
                                          decoration: InputDecoration(
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    vertical: size.height / 40,
                                                    horizontal: 10),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              borderSide: BorderSide(
                                                  color: SolidColors.black,
                                                  width: 2),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              borderSide: BorderSide(
                                                  color:
                                                      SolidColors.primaryColor,
                                                  width: 2),
                                            ),
                                            hintText: Strings.email_str,
                                            suffixIconConstraints:
                                                BoxConstraints(
                                              maxHeight: 48.0,
                                            ),
                                            suffixIcon: Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: SvgPicture.asset(
                                                Adress.ic_email_shape,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: size.height / 30),
                                        child: InkWell(
                                          onTap: () {
                                            showModalBottomSheet(
                                              showDragHandle: true,
                                              context: context,
                                              shape:
                                                  const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(24.0),
                                                  topRight:
                                                      Radius.circular(24.0),
                                                ),
                                              ),
                                              builder: (BuildContext context) {
                                                return Container(
                                                  height: 500,
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(10, 1, 10, 0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          border: Border(
                                                              top: BorderSide(
                                                                color: SolidColors
                                                                    .primaryColor,
                                                                width: 1.5,
                                                              ),
                                                              right: BorderSide(
                                                                color: const Color
                                                                    .fromRGBO(
                                                                    164,
                                                                    99,
                                                                    77,
                                                                    1),
                                                                width: 1.5,
                                                              ),
                                                              left: BorderSide(
                                                                color: const Color
                                                                    .fromRGBO(
                                                                    164,
                                                                    99,
                                                                    77,
                                                                    1),
                                                                width: 1.5,
                                                              ),
                                                              bottom:
                                                                  BorderSide(
                                                                color: const Color
                                                                    .fromRGBO(
                                                                    164,
                                                                    99,
                                                                    77,
                                                                    1),
                                                                width: 0,
                                                              )),
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    16.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    16.0),
                                                          )),
                                                      child: Center(
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .fromLTRB(
                                                                      size.width /
                                                                          6.05,
                                                                      0,
                                                                      size.width /
                                                                          6.05,
                                                                      0),
                                                              child: SvgPicture
                                                                  .asset(
                                                                Adress
                                                                    .vc_verficaton_butommsheet_verficaton,
                                                                // width: size.width / 1.64,
                                                                // height: size.height / 3.14,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top: size
                                                                              .height /
                                                                          42.8),
                                                              child: Text(
                                                                Strings
                                                                    .enter_verified_email_code_str,
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        17,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .fromLTRB(
                                                                      size.width /
                                                                          11.02,
                                                                      size.height /
                                                                          34.51,
                                                                      size.width /
                                                                          11.02,
                                                                      0),
                                                              child: TextField(
                                                                controller:
                                                                    nickName,
                                                                textDirection:
                                                                    TextDirection
                                                                        .rtl,
                                                                decoration:
                                                                    InputDecoration(
                                                                  contentPadding: EdgeInsets.symmetric(
                                                                      vertical:
                                                                          size.height /
                                                                              40,
                                                                      horizontal:
                                                                          10),
                                                                  border:
                                                                      OutlineInputBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            15),
                                                                    borderSide: BorderSide(
                                                                        color: SolidColors
                                                                            .black,
                                                                        width:
                                                                            2),
                                                                  ),
                                                                  focusedBorder:
                                                                      OutlineInputBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            15),
                                                                    borderSide: BorderSide(
                                                                        color: SolidColors
                                                                            .primaryColor,
                                                                        width:
                                                                            2),
                                                                  ),
                                                                  hintText: Strings
                                                                      .verified_code_str,
                                                                  suffixIconConstraints:
                                                                      BoxConstraints(
                                                                    maxHeight:
                                                                        48.0,
                                                                  ),
                                                                  suffixIcon:
                                                                      Padding(
                                                                    padding:
                                                                        const EdgeInsets
                                                                            .all(
                                                                            10.0),
                                                                    child: SvgPicture
                                                                        .asset(
                                                                      Adress
                                                                          .ic_verficaton_shape,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top: size
                                                                              .height /
                                                                          30),
                                                              child: InkWell(
                                                                onTap: () {
                                                                  Navigator
                                                                      .push(
                                                                    context,
                                                                    MaterialPageRoute(
                                                                      builder:
                                                                          (context) =>
                                                                              HomePage(),
                                                                    ),
                                                                  );
                                                                },
                                                                child:
                                                                    Container(
                                                                  width: size
                                                                          .width /
                                                                      3.071428571428571,
                                                                  height:
                                                                      size.height /
                                                                          18.64,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: SolidColors
                                                                        .primaryColor,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            1000),
                                                                  ),
                                                                  child: Center(
                                                                    child: Text(
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      Strings
                                                                          .countinu_str,
                                                                      style: TextStyle(
                                                                          fontWeight: FontWeight
                                                                              .w400,
                                                                          fontSize:
                                                                              24,
                                                                          color:
                                                                              SolidColors.onPrimaryColor),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                          child: Container(
                                            width:
                                                size.width / 3.071428571428571,
                                            height: size.height / 18.64,
                                            decoration: BoxDecoration(
                                              color: SolidColors.primaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(1000),
                                            ),
                                            child: Center(
                                              child: Text(
                                                textAlign: TextAlign.center,
                                                Strings.countinu_str,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 24,
                                                    color: SolidColors
                                                        .onPrimaryColor),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      width: size.width / 3.071428571428571,
                      height: size.height / 18.64,
                      decoration: BoxDecoration(
                        color: SolidColors.primaryColor,
                        borderRadius: BorderRadius.circular(1000),
                      ),
                      child: Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          Strings.countinu_str,
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
      ),
    );
  }
}
