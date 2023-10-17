import 'package:flutter/material.dart';
import 'package:techno_saz/res/colors.dart';

class Hashtag extends StatelessWidget {
  const Hashtag({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 27.0,
      width: size.width / 1.02,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 30,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(2, 0, 4, 0),
            child: SizedBox(
              width: size.width/4.83,
              height: size.height/27.0,
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle( 
                  overlayColor: MaterialStateProperty.all(
                      Color.fromARGB(81, 240, 217, 210)),
                  backgroundColor:
                      MaterialStateProperty.all(SolidColors.primaryColor),
                  shape:
                      MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Text(
                    "#فلاتر",
                    style: TextStyle(
                        color: SolidColors.onPrimaryColor,
                        fontSize: 17,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
