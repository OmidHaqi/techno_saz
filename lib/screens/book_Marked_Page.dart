import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:techno_saz/res/colors.dart';
import 'package:techno_saz/res/data_class.dart';
import 'package:techno_saz/res/paths.dart';
import 'package:techno_saz/res/strings.dart';
import 'package:techno_saz/screens/home_page.dart';

// ignore: must_be_immutable
class BookMarkedPage extends StatelessWidget {
  double titleSize;
  BookMarkedPage({required this.titleSize});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    if (DataClass.BookMarkedArticlePageModelList.isEmpty) {
      return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 90.0,
            elevation: 0,
            title: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color:
                        AdaptiveTheme.of(context).brightness == Brightness.light
                            ? SolidColors.textColor
                            : SolidColors.white,
                    width: 1.0,
                  ),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(4, 0, 0, 0),
                          child: SvgPicture.asset(
                            Address.save,
                            colorFilter: ColorFilter.mode(
                                AdaptiveTheme.of(context).brightness ==
                                        Brightness.dark
                                    ? SolidColors.primaryVariantColor
                                    : SolidColors.iconColor,
                                BlendMode.srcIn),
                          ),
                        ),
                        Text(
                          Strings.bookmarked_str,
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomePage(),
                                  ),
                                );
                              },
                              child: SvgPicture.asset(
                                Address.arrowLeft,
                                colorFilter: ColorFilter.mode(
                                    AdaptiveTheme.of(context).brightness ==
                                            Brightness.dark
                                        ? SolidColors.primaryVariantColor
                                        : SolidColors.iconColor,
                                    BlendMode.srcIn),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        DataClass.BookMarkedArticlePageModelList.length.toString()+" "+ Strings.article_str,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: Center(
            child: Column(mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              children: [ 
              SvgPicture.asset(Address.vc_empty),
              Text("هنوز هیچ اعلانی ندارید!")
            ]),
          ),
        ),
      );
    } else {
      return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 90.0,
            elevation: 0,
            title: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color:
                        AdaptiveTheme.of(context).brightness == Brightness.light
                            ? SolidColors.textColor
                            : SolidColors.white,
                    width: 1.0,
                  ),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(4, 0, 0, 0),
                          child: SvgPicture.asset(
                            Address.save,
                            colorFilter: ColorFilter.mode(
                                AdaptiveTheme.of(context).brightness ==
                                        Brightness.dark
                                    ? SolidColors.primaryVariantColor
                                    : SolidColors.iconColor,
                                BlendMode.srcIn),
                          ),
                        ),
                        Text(
                          Strings.bookmarked_str,
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomePage(),
                                  ),
                                );
                              },
                              child: SvgPicture.asset(
                                Address.arrowLeft,
                                colorFilter: ColorFilter.mode(
                                    AdaptiveTheme.of(context).brightness ==
                                            Brightness.dark
                                        ? SolidColors.primaryVariantColor
                                        : SolidColors.iconColor,
                                    BlendMode.srcIn),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "24" + Strings.article_str,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                      size.width / 11.2, 5, size.width / 11.2, 0),
                  child: GridView.builder(
                      itemCount:
                          DataClass.BookMarkedArticlePageModelList.length,
                      physics: BouncingScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio:
                            0.62, // change this value for different results
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 10,
                      ),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Container(
                              decoration: BoxDecoration(
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                        blurRadius: 1,
                                        color: AdaptiveTheme.of(context)
                                                    .brightness ==
                                                Brightness.light
                                            ? Color.fromARGB(43, 164, 99, 77)
                                            : Color.fromARGB(12, 255, 255, 255),
                                        offset: Offset(1, 2)),
                                  ],
                                  border: Border.all(width: 0.01),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              // color: Colors.amber,
                              width: size.width / 2.5,
                              height: size.height / 3.9,
                              child: Column(
                                children: [
                                  Container(
                                    width: size.width / 2.5,
                                    height: size.height / 5.3,
                                    decoration: BoxDecoration(
                                      boxShadow: <BoxShadow>[
                                        BoxShadow(
                                            blurRadius: 4,
                                            color:
                                                Color.fromARGB(78, 164, 99, 77),
                                            offset: Offset(2, 4)),
                                      ],
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(DataClass
                                              .BookMarkedArticlePageModelList[
                                                  index]
                                              .imageArticleUr),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 12, 6, 12),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          // color: Colors.blue,
                                          width: size.width / 3.3,
                                          height: size.height / 20,
                                          child: Text(
                                            DataClass
                                                .BookMarkedArticlePageModelList[
                                                    index]
                                                .titleArticleUr,
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 2,
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        SvgPicture.asset(
                                          Address.more,
                                          colorFilter: ColorFilter.mode(
                                              AdaptiveTheme.of(context)
                                                          .brightness ==
                                                      Brightness.dark
                                                  ? SolidColors
                                                      .primaryVariantColor
                                                  : SolidColors.iconColor,
                                              BlendMode.srcIn),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(6, 0, 0, 0),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              4, 0, 10, 0),
                                          child: Container(
                                            height: size.height / 37.28,
                                            width: size.width / 17.2,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(400),
                                              image: DecorationImage(
                                                  image: AssetImage(DataClass
                                                      .BookMarkedArticlePageModelList[
                                                          index]
                                                      .writerProfilePhotoUr),
                                                  fit: BoxFit.cover),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: size.width / 7,
                                          child: Text(
                                            DataClass
                                                .BookMarkedArticlePageModelList[
                                                    index]
                                                .writersName,
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Text(
                                          DataClass
                                              .BookMarkedArticlePageModelList[
                                                  index]
                                              .PublicationDateArticleUr,
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              )
            ],
          ),
        ),
      );
    }
  }
}
