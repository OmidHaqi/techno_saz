import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:techno_saz/res/colors.dart';
import 'package:techno_saz/res/paths.dart';


class Explore extends StatefulWidget {
  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var sizeW = MediaQuery.of(context).size.width;
    var sizeH = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      toolbarHeight: sizeH / 11.5,
      
      title: Center(
        child: Container(
          width: sizeW / 1.214,
          height: sizeH / 23.89,
          child: TextField(
            controller: _searchController,
            
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                  vertical: size.height / 40, horizontal: 10),
              hintText: "جستجو",
              suffixIconConstraints: BoxConstraints(
                maxHeight: 48.0,
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SvgPicture.asset(
                  Address.ic_nickName_eadite,
                  colorFilter: ColorFilter.mode(
                      AdaptiveTheme.of(context).brightness == Brightness.dark
                          ? SolidColors.primaryVariantColor
                          : SolidColors.iconColor,
                      BlendMode.srcIn),
                ),
              ),
            ),
            onChanged: (value) {
              // Perform search functionality here
            },
          ),
        ),
      ),
    ));
  }
}
