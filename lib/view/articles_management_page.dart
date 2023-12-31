import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:techno_saz/res/colors.dart';
import 'package:techno_saz/res/data_class.dart';
import 'package:techno_saz/res/paths.dart';
import 'package:techno_saz/res/strings.dart';
import 'package:techno_saz/view/home_page.dart';

// ignore: must_be_immutable
class ArticlesManagementPage extends StatefulWidget {
  double titleSize;
  ArticlesManagementPage({required this.titleSize});

  @override
  State<ArticlesManagementPage> createState() => _ArticlesManagementPageState();
}

class _ArticlesManagementPageState extends State<ArticlesManagementPage>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose;
    super.dispose();
  }

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: SvgPicture.asset(
                    Address.ic_articles_managment,
                    colorFilter: ColorFilter.mode(
                        AdaptiveTheme.of(context).brightness == Brightness.dark
                            ? SolidColors.primaryVariantColor
                            : SolidColors.iconColor,
                        BlendMode.srcIn),
                  ),
                ),
                Text(
                  Strings.article_managment_str,
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
                                ));
                          },
                          child: SvgPicture.asset(
                            Address.arrowLeft,
                            colorFilter: ColorFilter.mode(
                                AdaptiveTheme.of(context).brightness ==
                                        Brightness.dark
                                    ? SolidColors.primaryVariantColor
                                    : SolidColors.iconColor,
                                BlendMode.srcIn),
                          ))),
                ),
              ],
            )
          ],
        ),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              text: "منتشر شده",
            ),
            Tab(
              text: "پیش نویس",
            ),
            Tab(
              text: "در انتظار تایید",
            ),
          ],
        ),
      ),
      body: TabBarView(controller: _tabController, children: [
        MotasherShode(size: size),
        PishNevis(size: size),
        DarEntezarTaiid(size: size),
      ]),
    );
  }
}

class DarEntezarTaiid extends StatelessWidget {
  const DarEntezarTaiid({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    if (DataClass.ArticleManagementPageAwaitingConfirmationModelList.isEmpty) {
      return Scaffold(
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(Address.vc_empty_management),
                Text("هنوز هیچ مقاله ای رو برای تایید ارسال نکردی!")
              ]),
        ),
      );
    } else {
      return ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount:
            DataClass.ArticleManagementPageAwaitingConfirmationModelList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.fromLTRB(
                size.width / 25.29, size.height / 58.25, size.width / 25.29, 0),
            child: Container(
              width: size.width / 1.1,
              height: size.height / 11.65,
              child: Row(
                children: [
                  Container(
                    width: size.width / 5.375,
                    height: size.height / 11.65,
                    decoration: BoxDecoration(
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            blurRadius: 4,
                            color: Color.fromARGB(78, 164, 99, 77),
                            offset: Offset(2, 4)),
                      ],
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          image: AssetImage(DataClass
                              .ArticleManagementPageAwaitingConfirmationModelList[
                                  index]
                              .imageArticleUr),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, size.width / 33.07, 0),
                    child: Container(
                      width: size.width / 1.8,
                      height: size.height / 15.53,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            DataClass
                                .ArticleManagementPageAwaitingConfirmationModelList[
                                    index]
                                .titleArticleUr,
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Row(
                            children: [
                              Text(
                                DataClass
                                        .ArticleManagementPageAwaitingConfirmationModelList[
                                            index]
                                        .PublicationDateArticleUr +
                                    " | ",
                                style: TextStyle(fontSize: 14),
                              ),
                              Text(
                                DataClass
                                    .ArticleManagementPageAwaitingConfirmationModelList[
                                        index]
                                    .whatTimeOfDay,
                                style: TextStyle(fontSize: 14),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: size.width / 28.66),
                          child: InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                isScrollControlled: true,
                                showDragHandle: true,
                                context: context,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(24.0),
                                    topRight: Radius.circular(24.0),
                                  ),
                                ),
                                builder: (BuildContext context) {
                                  return Padding(
                                    padding: EdgeInsets.only(
                                        bottom: MediaQuery.of(context)
                                            .viewInsets
                                            .bottom),
                                    child: Container(
                                      height: 400,
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            10, 1, 10, 0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border(
                                                  top: BorderSide(
                                                    color: AdaptiveTheme.of(
                                                                    context)
                                                                .brightness ==
                                                            Brightness.dark
                                                        ? SolidColors
                                                            .primaryVariantColor
                                                        : SolidColors
                                                            .primaryColor,
                                                    width: 1.5,
                                                  ),
                                                  right: BorderSide(
                                                    color: AdaptiveTheme.of(
                                                                    context)
                                                                .brightness ==
                                                            Brightness.dark
                                                        ? SolidColors
                                                            .primaryVariantColor
                                                        : SolidColors
                                                            .primaryColor,
                                                    width: 1.5,
                                                  ),
                                                  left: BorderSide(
                                                    color: AdaptiveTheme.of(
                                                                    context)
                                                                .brightness ==
                                                            Brightness.dark
                                                        ? SolidColors
                                                            .primaryVariantColor
                                                        : SolidColors
                                                            .primaryColor,
                                                    width: 1.5,
                                                  ),
                                                  bottom: BorderSide(
                                                    color: AdaptiveTheme.of(
                                                                    context)
                                                                .brightness ==
                                                            Brightness.dark
                                                        ? SolidColors
                                                            .primaryVariantColor
                                                        : SolidColors
                                                            .primaryColor,
                                                    width: 0,
                                                  )),
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(16.0),
                                                topRight: Radius.circular(16.0),
                                              )),
                                          child: Center(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                SvgPicture.asset(
                                                  Address.vc_throw_away,

                                                  // width: size.width / 1.64,
                                                  // height: size.height / 3.14,
                                                ),
                                                Text(
                                                  Strings
                                                      .are_you_shure_delet_article,
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Container(
                                                      width: size.width /
                                                          3.071428571428571,
                                                      height:
                                                          size.height / 18.64,
                                                      decoration: BoxDecoration(
                                                        color: AdaptiveTheme.of(
                                                                        context)
                                                                    .brightness ==
                                                                Brightness.dark
                                                            ? SolidColors
                                                                .primaryVariantColor
                                                            : SolidColors
                                                                .primaryColor,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(1000),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          textAlign:
                                                              TextAlign.center,
                                                          "بله",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              fontSize: 24,
                                                              color: AdaptiveTheme.of(
                                                                              context)
                                                                          .brightness ==
                                                                      Brightness
                                                                          .dark
                                                                  ? SolidColors
                                                                      .textColor
                                                                  : SolidColors
                                                                      .white),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: size.width /
                                                          3.071428571428571,
                                                      height:
                                                          size.height / 18.64,
                                                      decoration: BoxDecoration(
                                                        color: AdaptiveTheme.of(
                                                                        context)
                                                                    .brightness ==
                                                                Brightness.dark
                                                            ? SolidColors
                                                                .primaryColor
                                                            : SolidColors
                                                                .primaryVariantColor,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(1000),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          textAlign:
                                                              TextAlign.center,
                                                          "خیر",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              fontSize: 24,
                                                              color: AdaptiveTheme.of(
                                                                              context)
                                                                          .brightness ==
                                                                      Brightness
                                                                          .dark
                                                                  ? SolidColors
                                                                      .white
                                                                  : SolidColors
                                                                      .textColor),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            child: SvgPicture.asset(
                              Address.vc_trash,
                              colorFilter: ColorFilter.mode(
                                  AdaptiveTheme.of(context).brightness ==
                                          Brightness.dark
                                      ? SolidColors.primaryVariantColor
                                      : SolidColors.iconColor,
                                  BlendMode.srcIn),
                            ),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          );
        },
      );
    }
  }
}

class PishNevis extends StatelessWidget {
  const PishNevis({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    if (DataClass.ArticleManagementPagedraftModelList.isEmpty) {
      return Scaffold(
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(Address.vc_empty_management),
                Text("هنوز هیچ مقاله‌ی ناتمومی نداری!")
              ]),
        ),
      );
    } else {
      return ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: DataClass.ArticleManagementPagedraftModelList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.fromLTRB(
                size.width / 25.29, size.height / 58.25, size.width / 25.29, 0),
            child: Container(
              width: size.width / 1.1,
              height: size.height / 11.65,
              child: Row(
                children: [
                  Container(
                    width: size.width / 5.375,
                    height: size.height / 11.65,
                    decoration: BoxDecoration(
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            blurRadius: 4,
                            color: Color.fromARGB(78, 164, 99, 77),
                            offset: Offset(2, 4)),
                      ],
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          image: AssetImage(DataClass
                              .ArticleManagementPagedraftModelList[index]
                              .imageArticleUr),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, size.width / 33.07, 0),
                    child: Container(
                      width: size.width / 1.8,
                      height: size.height / 15.53,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            DataClass.ArticleManagementPagedraftModelList[index]
                                .titleArticleUr,
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Row(
                            children: [
                              Text(
                                DataClass
                                        .ArticleManagementPagedraftModelList[
                                            index]
                                        .PublicationDateArticleUr +
                                    " | ",
                                style: TextStyle(fontSize: 14),
                              ),
                              Text(
                                DataClass
                                    .ArticleManagementPagedraftModelList[index]
                                    .whatTimeOfDay,
                                style: TextStyle(fontSize: 14),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: size.width / 28.66),
                          child: SvgPicture.asset(
                            Address.vc_trash,
                            colorFilter: ColorFilter.mode(
                                AdaptiveTheme.of(context).brightness ==
                                        Brightness.dark
                                    ? SolidColors.primaryVariantColor
                                    : SolidColors.iconColor,
                                BlendMode.srcIn),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          );
        },
      );
    }
  }
}

class MotasherShode extends StatelessWidget {
  const MotasherShode({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    if (DataClass.ArticleManagementPagepublishedModelList.isEmpty) {
      return Scaffold(
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(Address.vc_empty_management),
                Text("هنوز هیچ مقاله ای تو تکنوساز منتشر نکردی!!")
              ]),
        ),
      );
    } else {
      return ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: DataClass.ArticleManagementPagepublishedModelList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.fromLTRB(
                size.width / 25.29, size.height / 58.25, size.width / 25.29, 0),
            child: Container(
              width: size.width / 1.1,
              height: size.height / 11.65,
              child: Row(
                children: [
                  Container(
                    width: size.width / 5.375,
                    height: size.height / 11.65,
                    decoration: BoxDecoration(
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            blurRadius: 4,
                            color: Color.fromARGB(78, 164, 99, 77),
                            offset: Offset(2, 4)),
                      ],
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          image: AssetImage(DataClass
                              .ArticleManagementPagepublishedModelList[index]
                              .imageArticleUr),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, size.width / 33.07, 0),
                    child: Container(
                      width: size.width / 1.8,
                      height: size.height / 15.53,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            DataClass
                                .ArticleManagementPagepublishedModelList[index]
                                .titleArticleUr,
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Row(
                            children: [
                              Text(
                                DataClass
                                        .ArticleManagementPagepublishedModelList[
                                            index]
                                        .PublicationDateArticleUr +
                                    " | ",
                                style: TextStyle(fontSize: 14),
                              ),
                              Text(
                                DataClass
                                        .ArticleManagementPagepublishedModelList[
                                            index]
                                        .Visit +
                                    " بازدید",
                                style: TextStyle(fontSize: 14),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: size.width / 28.66),
                          child: SvgPicture.asset(
                            Address.vc_trash,
                            colorFilter: ColorFilter.mode(
                                AdaptiveTheme.of(context).brightness ==
                                        Brightness.dark
                                    ? SolidColors.primaryVariantColor
                                    : SolidColors.iconColor,
                                BlendMode.srcIn),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          );
        },
      );
    }
  }
}
