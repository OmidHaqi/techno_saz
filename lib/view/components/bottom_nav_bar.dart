import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:techno_saz/res/colors.dart';
import 'package:techno_saz/res/paths.dart';
import 'package:techno_saz/res/strings.dart';
import 'package:techno_saz/view/articles_management_page.dart';
import 'package:techno_saz/view/logIn_two_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  TextEditingController nickName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: widget.size.height / 13,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgPicture.asset(
              Address.home,
              height: widget.size.height / 31.06,
              width: widget.size.width / 14.4,
            ),
            InkWell(child: SvgPicture.asset(Address.discover)),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LogInTwoPage(),
                  ),
                );
              },
              child: InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      showDragHandle: true,
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24.0),
                          topRight: Radius.circular(24.0),
                        ),
                      ),
                      builder: (BuildContext context) {
                        return Padding(
                          padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom),
                          child: Container(
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
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      SvgPicture.asset(
                                        Address
                                            .vc_share_Knowledge_others,fit: BoxFit.fill,
                                      ),
                                      Text(
                                        Strings.share_knowlage_str,
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  LogInTwoPage(),
                                            ),
                                          );
                                        },
                                        child: Container(
                                          width:
                                              widget.size.width / 3.071428571428571,
                                          height: widget.size.height / 18.64,
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
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: SvgPicture.asset(Address.addArticle)),
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ArticlesManagementPage(
                        titleSize: 25,
                      ),
                    ),
                  );
                },
                child: SvgPicture.asset(Address.myArticlesIc)),
            SvgPicture.asset(Address.myProfile),
          ],
        ));
  }
}
