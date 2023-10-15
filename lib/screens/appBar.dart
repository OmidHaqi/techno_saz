import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:techno_saz/res/colors.dart';
import 'package:techno_saz/res/paths.dart';

import '../res/strings.dart';

class appBar extends StatelessWidget {
  const appBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
              child: SvgPicture.asset(Adress.menu),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
              child: SvgPicture.asset(Adress.feather),
            ),
            Expanded(child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
              child: Text(Strings.technoSaz_str,style: TextStyle(fontSize: 20,color: SolidColors.textColor),),
            )),
            SvgPicture.asset(Adress.search),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
              child: SvgPicture.asset(Adress.bell),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
              child: SvgPicture.asset(Adress.save),
            ),
          ],
        );
  }
}
