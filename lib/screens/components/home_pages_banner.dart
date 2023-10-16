import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:techno_saz/res/colors.dart';
import 'package:techno_saz/res/paths.dart';
import 'package:techno_saz/res/strings.dart';

class HomePagesBanner extends StatelessWidget {
  const HomePagesBanner({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 1, 0, 16),
          child: SizedBox(
            height: size.height / 4.5,
            width: size.width / 1.02,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 4, 0),
                  child: Container(
                    height: size.height / 4.5,
                    width: size.width / 1.04,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      image: DecorationImage(
                          image: AssetImage(Adress.banner),
                          fit: BoxFit.cover),
                          
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        gradient: LinearGradient(
                            colors: GradientColors.onBaner,
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 0,
                            left: 0,
                            child: SvgPicture.asset(Adress.wave),
                          ),
                          Positioned(
                            right: 10,
                            top: 75,
                            child: Text(
                              "چطور میتونیم نویسنده خوبی باشیم؟",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: SolidColors.onPrimaryColor,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 110,
                            right: 30,
                            child: TextButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                overlayColor: MaterialStateProperty.all(
                                    Color.fromARGB(81, 240, 217, 210)),
                                backgroundColor:
                                    MaterialStateProperty.all(
                                        SolidColors.primaryColor),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(18),
                                  ),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    16, 0, 16, 0),
                                child: Text(
                                  Strings.more_str,
                                  style: TextStyle(
                                      color:
                                          SolidColors.onPrimaryColor),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
