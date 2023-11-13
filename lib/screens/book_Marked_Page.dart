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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 90.0,
          elevation: 0,
          backgroundColor: SolidColors.white,
          title: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.black,
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
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: SvgPicture.asset(Adress.save),
                      ),
                      Text(
                        Strings.bookmarked_str,
                        style: TextStyle(
                            fontSize: titleSize,
                            color: SolidColors.textColor,
                            fontWeight: FontWeight.bold),
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
                            child: SvgPicture.asset(Adress.arrowLeft),
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
                          fontSize: 14,
                          color: SolidColors.textColor,
                          fontWeight: FontWeight.w300),
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
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: GridView.builder(
                    itemCount: Data_Class.BookMarkedArticlePageModelList.length,
                    physics: BouncingScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio:
                          0.70, // change this value for different results
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                    ),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {},
                        child: Container(
                          width: size.width / 2.10,
                          height: size.height / 3,
                          child: Column(
                            children: [
                              Container(
                                width: size.width / 2.20,
                                height: size.height / 4.5,
                                decoration: BoxDecoration(
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                        blurRadius: 4,
                                        color: Color.fromARGB(78, 164, 99, 77),
                                        offset: Offset(2, 4)),
                                  ],
                                  borderRadius: BorderRadius.circular(35),
                                  image: DecorationImage(
                                      image: AssetImage(Data_Class
                                          .BookMarkedArticlePageModelList[index]
                                          .imageArticleUr),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(12, 12, 12, 12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: size.width / 2.8,
                                      child: Text(
                                        Data_Class
                                            .BookMarkedArticlePageModelList[
                                                index]
                                            .titleArticleUr,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: SolidColors.textColor),
                                      ),
                                    ),
                                    SvgPicture.asset(Adress.more)
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 0, 1, 0),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          8, 0, 10, 0),
                                      child: Container(
                                        height: size.height / 37.28,
                                        width: size.width / 17.2,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(400),
                                          image: DecorationImage(
                                              image: AssetImage(Data_Class
                                                  .BookMarkedArticlePageModelList[
                                                      index]
                                                  .writerProfilePhotoUr),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: size.width / 5.60,
                                      child: Text(
                                        Data_Class
                                            .BookMarkedArticlePageModelList[
                                                index]
                                            .writersName,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(Data_Class
                                        .BookMarkedArticlePageModelList[index]
                                        .PublicationDateArticleUr),
                                  ],
                                ),
                              )
                            ],
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
