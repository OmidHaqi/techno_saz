import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:techno_saz/res/colors.dart';
import 'package:techno_saz/res/data_class.dart';
import 'package:techno_saz/res/paths.dart';
import 'package:techno_saz/res/strings.dart';
import 'package:techno_saz/screens/home_page.dart';

// ignore: must_be_immutable
class ArticlesManagementPage extends StatefulWidget {
  double titleSize;
  ArticlesManagementPage({required this.titleSize});

  @override
  State<ArticlesManagementPage> createState() => _ArticlesManagementPageState();
}

class _ArticlesManagementPageState extends State<ArticlesManagementPage>
    with TickerProviderStateMixin {
  late final TabController _tabcontroler;

  @override
  void initState() {
    _tabcontroler = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabcontroler.dispose;
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
                  child: SvgPicture.asset(Adress.ic_articles_managment),
                ),
                Text(
                  Strings.article_managment_str,
                  style: TextStyle(
                      fontSize: widget.titleSize, fontWeight: FontWeight.bold),
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
                          child: SvgPicture.asset(Adress.arrowLeft))),
                ),
              ],
            )
          ],
        ),
        bottom: TabBar(
          unselectedLabelColor: Colors.grey,
          labelColor: Colors.black,
          indicatorColor: Colors.black,
          controller: _tabcontroler,
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
      body: TabBarView(controller: _tabcontroler, children: [
        ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: Data_Class.ArticleManagementPagepublishedModelList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.fromLTRB(size.width / 25.29,
                  size.height / 58.25, size.width / 25.29, 0),
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
                            image: AssetImage(Data_Class
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
                              Data_Class
                                  .ArticleManagementPagepublishedModelList[
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
                                  Data_Class
                                          .ArticleManagementPagepublishedModelList[
                                              index]
                                          .PublicationDateArticleUr +
                                      " | ",
                                  style: TextStyle(fontSize: 14),
                                ),
                                Text(
                                  Data_Class
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
                            child: SvgPicture.asset(Adress.vc_trash),
                          )),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: Data_Class.ArticleManagementPagepublishedModelList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.fromLTRB(size.width / 25.29,
                  size.height / 58.25, size.width / 25.29, 0),
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
                            image: AssetImage(Data_Class
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
                              Data_Class
                                  .ArticleManagementPagepublishedModelList[
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
                                  Data_Class
                                          .ArticleManagementPagepublishedModelList[
                                              index]
                                          .PublicationDateArticleUr +
                                      " | ",
                                  style: TextStyle(fontSize: 14),
                                ),
                                Text(
                                  Data_Class
                                      .ArticleManagementPagepublishedModelList[index]
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
                            child: SvgPicture.asset(Adress.vc_trash),
                          )),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        Center(
          child: Text("boos"),
        )
      ]),
    );
  }
}
