import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:techno_saz/res/colors.dart';
import 'package:techno_saz/res/paths.dart';
import 'package:techno_saz/res/strings.dart';

class MyArticles extends StatelessWidget {
  const MyArticles({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
    children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
            child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        Strings.myArticles_str,
        style: TextStyle(
            color: SolidColors.textColor,
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      SvgPicture.asset(Adress.arrowLeft),
    ],
            ),
          ),
          Container(
            height: size.height / 3,
            width: size.width / 1.02,
            child: ListView.builder(
    physics: BouncingScrollPhysics(),
    itemCount: 5,
    scrollDirection: Axis.horizontal,
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(8, 0, 4, 0),
        child: Container(
          width: size.width/2.10,
                  height: size.height/3.96,
          
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 6, 0),
                child: Container(
                  width: size.width / 2.22,
                  height: size.height / 4.75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    image: DecorationImage(
                        image: AssetImage(Adress.myArticles),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      Strings.articleName_str,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: SolidColors.textColor),
                    ),
                    
                    SvgPicture.asset(Adress.more)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 10, 0),
                      child: Container(
                        height: size.height / 37.28,
                        width: size.width / 17.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                            image: AssetImage(Adress.profilePhoto),
                          ),
                        ),
                      ),
                    ),
                   
                    Text(Strings.writerName_str,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(width: 5,),
                    Text(" 4 "+Strings.daysAgo_str),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    },
            ),
          ),
    ],
            );
  }
}
