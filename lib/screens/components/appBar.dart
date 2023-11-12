import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:techno_saz/res/colors.dart';
import 'package:techno_saz/res/paths.dart';
import 'package:techno_saz/screens/book_Marked_Page.dart';
import 'package:techno_saz/screens/common/widgets.dart';
import 'package:techno_saz/screens/notifications.dart';
import '../../res/strings.dart';

// ignore: must_be_immutable
class appBar extends StatelessWidget {
  double titleSize;
  appBar({required this.titleSize});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
            child: SvgPicture.asset(Adress.menu),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
            child: SvgPicture.asset(Adress.feather),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
            child: Text(
              Strings.technoSaz_str,
              style: TextStyle(
                  fontSize: titleSize,
                  color: SolidColors.textColor,
                  fontWeight: FontWeight.bold),
            ),
          )),
          InkWell(onTap: () async {
                            await customDialoge(context);
                          },
            child: SvgPicture.asset(Adress.search)),
          Padding(

            padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
            child: InkWell(
              onTap:() {
              Navigator.push(
                
                
                context,
                MaterialPageRoute(
                  builder: (context) => Notifications(titleSize: 25),
                ),
              );
            } ,
              child:SvgPicture.asset(Adress.bell)),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                
                context,
                MaterialPageRoute(
                  builder: (context) => BookMarkedPage(titleSize: 25),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
              child: SvgPicture.asset(Adress.save),
            ),
          ),
        ],
      ),
    );
  }
}
