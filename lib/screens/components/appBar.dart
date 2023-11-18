import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:techno_saz/res/paths.dart';
import 'package:techno_saz/screens/book_Marked_Page.dart';
import 'package:techno_saz/screens/notifications.dart';
import '../../res/strings.dart';

// ignore: must_be_immutable
class HomePagesAppbar extends StatelessWidget {
  double titleSize;

  HomePagesAppbar({required this.titleSize});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
            child: SvgPicture.asset(Address.menu),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
            child: SvgPicture.asset(Address.feather),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
            child: Text(
              Strings.technoSaz_str,
              style:
                  TextStyle(fontSize: titleSize, fontWeight: FontWeight.bold),
            ),
          )),
          Switch(
            inactiveThumbImage: AssetImage(Address.changeThemeLight),
            activeThumbImage: AssetImage(Address.changeThemeDark),
            value: AdaptiveTheme.of(context).mode.isDark,
            onChanged: (value) {
              if (value) {
                AdaptiveTheme.of(context).setDark();
              } else {
                AdaptiveTheme.of(context).setLight();
              }
            },
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: SvgPicture.asset(Address.search),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
            child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Notifications(titleSize: 25),
                    ),
                  );
                },
                child: SvgPicture.asset(Address.bell)),
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
              child: SvgPicture.asset(Address.save),
            ),
          ),
        ],
      ),
    );
  }
}
