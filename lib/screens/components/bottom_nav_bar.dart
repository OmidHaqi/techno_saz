import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:techno_saz/res/colors.dart';
import 'package:techno_saz/res/paths.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: size.height / 13,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgPicture.asset(
              Adress.home,
              color: SolidColors.primaryColor,
              height: size.height / 31.06,
              width: size.width / 14.4,
            ),
            SvgPicture.asset(Adress.discover),
            InkWell(
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
                                       color: const Color.fromRGBO(164, 99, 77, 1),
                                      width: 1.5,
                                    ),
                                    left: BorderSide(
                                      color: const Color.fromRGBO(164, 99, 77, 1),
                                      width: 1.5,
                                    ),
                                    bottom: BorderSide(
                                      color:  const Color.fromRGBO(164, 99, 77, 1),
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
                                  const Text('Bottom Sheet'),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
                //   onTap: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => LogInTwoPage(),
                //     ),
                //   );
                // },
                child: SvgPicture.asset(Adress.addArticle)),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LogInTwoPage(),
                    ),
                  );
                },
                child: SvgPicture.asset(Adress.myArticlesIc)),
            SvgPicture.asset(Adress.myProfile),
          ],
        ));
  }
}
