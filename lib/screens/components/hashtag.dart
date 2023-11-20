import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:techno_saz/res/colors.dart';
import 'package:techno_saz/res/data_class.dart';
import 'package:techno_saz/res/paths.dart';

class Hashtag extends StatelessWidget {
  const Hashtag({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 21.5,
      width: size.width / 1.02,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: DataClass.tagList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(2, 0, 4, 0),
            child: SizedBox(
              child: TextButton(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 7, 12, 4),
                      child: Text(
                        "# ",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 2, 0, 0),
                      child: Text(
                        DataClass.tagList[index].title,
                      ),
                    ),
                  ],
                ),
                onPressed: () {},
              ),
            ),
          );
        },
      ),
    );
  }
}
