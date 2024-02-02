import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:techno_saz/res/paths.dart';
import 'package:techno_saz/view/nick_name_page.dart';

class customFab extends StatefulWidget {
  const customFab({super.key, required this.controller});
  final ScrollController controller;

  @override
  State<customFab> createState() => _customFabState();
}

class _customFabState extends State<customFab> {
  var isVisible = true;
  @override
  void initState() {
    super.initState();
    widget.controller.addListener(() {
      if (widget.controller.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (isVisible != false) {
          setState(() {
            isVisible = false;
          });
        }
      } else {
        if (isVisible != true) {
          setState(() {
            isVisible = true;
          });
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVisible,
      child: FloatingActionButton(
        isExtended: isVisible,
        tooltip: 'افزودن مقاله جدید',
        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NickNamePage(),
                            ),
                          ),
        child: SvgPicture.asset(
            AdaptiveTheme.of(context).brightness == Brightness.dark
                ? Address.myArticlesIcDark
                : Address.addArticle),
      ),
    );
  }
}
