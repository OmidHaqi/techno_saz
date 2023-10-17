import 'package:flutter/material.dart';
import 'package:techno_saz/res/colors.dart';
import 'package:techno_saz/res/data_class.dart';

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
        itemCount: tagList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
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
                    padding: const EdgeInsets.fromLTRB(12, 8, 0, 8),
                    child: Text(
                      tagList[index].title,
                      style: TextStyle(
                          color: SolidColors.onPrimaryColor,
                          fontSize: 17,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
